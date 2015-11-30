<?php
/*----------------------------------------------------------------------------------|  www.vdm.io  |----/
				Vast Development Method 
/-------------------------------------------------------------------------------------------------------/

	@version		1.2.9
	@build			30th November, 2015
	@created		22nd October, 2015
	@package		Sermon Distributor
	@subpackage		statistics.php
	@author			Llewellyn van der Merwe <https://www.vdm.io/>	
	@copyright		Copyright (C) 2015. All Rights Reserved
	@license		GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html
  ____  _____  _____  __  __  __      __       ___  _____  __  __  ____  _____  _  _  ____  _  _  ____ 
 (_  _)(  _  )(  _  )(  \/  )(  )    /__\     / __)(  _  )(  \/  )(  _ \(  _  )( \( )( ___)( \( )(_  _)
.-_)(   )(_)(  )(_)(  )    (  )(__  /(__)\   ( (__  )(_)(  )    (  )___/ )(_)(  )  (  )__)  )  (   )(  
\____) (_____)(_____)(_/\/\_)(____)(__)(__)   \___)(_____)(_/\/\_)(__)  (_____)(_)\_)(____)(_)\_) (__) 

/------------------------------------------------------------------------------------------------------*/

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// import Joomla controlleradmin library
jimport('joomla.application.component.controlleradmin');

/**
 * Statistics Controller
 */
class SermondistributorControllerStatistics extends JControllerAdmin
{
	protected $text_prefix = 'COM_SERMONDISTRIBUTOR_STATISTICS';
	/**
	 * Proxy for getModel.
	 * @since	2.5
	 */
	public function getModel($name = 'Statistic', $prefix = 'SermondistributorModel', $config = array())
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		
		return $model;
	}

	public function exportData()
	{
		// [7235] Check for request forgeries
		JSession::checkToken() or die(JText::_('JINVALID_TOKEN'));
		// [7237] check if export is allowed for this user.
		$user = JFactory::getUser();
		if ($user->authorise('statistic.export', 'com_sermondistributor') && $user->authorise('core.export', 'com_sermondistributor'))
		{
			// [7241] Get the input
			$input = JFactory::getApplication()->input;
			$pks = $input->post->get('cid', array(), 'array');
			// [7244] Sanitize the input
			JArrayHelper::toInteger($pks);
			// [7246] Get the model
			$model = $this->getModel('Statistics');
			// [7248] get the data to export
			$data = $model->getExportData($pks);
			if (SermondistributorHelper::checkArray($data))
			{
				// [7252] now set the data to the spreadsheet
				$date = JFactory::getDate();
				SermondistributorHelper::xls($data,'Statistics_'.$date->format('jS_F_Y'),'Statistics exported ('.$date->format('jS F, Y').')','statistics');
			}
		}
		// [7257] Redirect to the list screen with error.
		$message = JText::_('COM_SERMONDISTRIBUTOR_EXPORT_FAILED');
		$this->setRedirect(JRoute::_('index.php?option=com_sermondistributor&view=statistics', false), $message, 'error');
		return;
	}


	public function importData()
	{
		// [7266] Check for request forgeries
		JSession::checkToken() or die(JText::_('JINVALID_TOKEN'));
		// [7268] check if import is allowed for this user.
		$user = JFactory::getUser();
		if ($user->authorise('statistic.import', 'com_sermondistributor') && $user->authorise('core.import', 'com_sermondistributor'))
		{
			// [7272] Get the import model
			$model = $this->getModel('Statistics');
			// [7274] get the headers to import
			$headers = $model->getExImPortHeaders();
			if (SermondistributorHelper::checkObject($headers))
			{
				// [7278] Load headers to session.
				$session = JFactory::getSession();
				$headers = json_encode($headers);
				$session->set('statistic_VDM_IMPORTHEADERS', $headers);
				$session->set('backto_VDM_IMPORT', 'statistics');
				$session->set('dataType_VDM_IMPORTINTO', 'statistic');
				// [7284] Redirect to import view.
				$message = JText::_('COM_SERMONDISTRIBUTOR_IMPORT_SELECT_FILE_FOR_STATISTICS');
				$this->setRedirect(JRoute::_('index.php?option=com_sermondistributor&view=import', false), $message);
				return;
			}
		}
		// [7296] Redirect to the list screen with error.
		$message = JText::_('COM_SERMONDISTRIBUTOR_IMPORT_FAILED');
		$this->setRedirect(JRoute::_('index.php?option=com_sermondistributor&view=statistics', false), $message, 'error');
		return;
	} 
}
