#ifndef H_QML_CUTEHMI_MODBUS_SRC_CUTEHMIMODBUSQMLPLUGIN_HPP
#define H_QML_CUTEHMI_MODBUS_SRC_CUTEHMIMODBUSQMLPLUGIN_HPP

#include <QQmlExtensionPlugin>

//<workaround id="cutehmi_modbus_1_qml-1" target="Qt" cause="design">
// Using long class name instead of a namespace.
class CuteHMIModbusQMLPlugin:
	public QQmlExtensionPlugin
{
	Q_OBJECT
	Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

	public:
		void registerTypes(const char * uri) override;
};
//</workaround>

#endif

//(c)MP: Copyright © 2018, Michal Policht. All rights reserved.
//(c)MP: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
