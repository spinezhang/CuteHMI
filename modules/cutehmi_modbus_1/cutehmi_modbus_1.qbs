import qbs

import cutehmi

cutehmi.Module {
	name: "cutehmi_modbus_1"

	condition: cutehmi.libmodbus.available

	minor: 0

	micro: 0

	friendlyName: "Modbus"

	vendor: "CuteHMI"

	description: "Allows for communication with devices over Modbus protocol."

	author: "Michal Policht"

	copyright: "Michal Policht"

	license: "Mozilla Public License, v. 2.0"

	files: [
        "include/cutehmi/modbus/AbstractDevice.hpp",
        "include/cutehmi/modbus/Client.hpp",
        "include/cutehmi/modbus/Coil.hpp",
        "include/cutehmi/modbus/DiscreteInput.hpp",
        "include/cutehmi/modbus/Exception.hpp",
        "include/cutehmi/modbus/HoldingRegister.hpp",
        "include/cutehmi/modbus/InputRegister.hpp",
        "include/cutehmi/modbus/Service.hpp",
        "include/cutehmi/modbus/internal/AbstractConnection.hpp",
        "include/cutehmi/modbus/internal/DataContainer.hpp",
        "include/cutehmi/modbus/internal/DummyConnection.hpp",
        "include/cutehmi/modbus/internal/LibmodbusConnection.hpp",
        "include/cutehmi/modbus/internal/RTUConnection.hpp",
        "include/cutehmi/modbus/internal/RegisterTraits.hpp",
        "include/cutehmi/modbus/internal/ServiceThread.hpp",
        "include/cutehmi/modbus/internal/TCPConnection.hpp",
        "include/cutehmi/modbus/internal/common.hpp",
        "include/cutehmi/modbus/internal/functions.hpp",
        "include/cutehmi/modbus/internal/platform.hpp",
        "include/cutehmi/modbus/logging.hpp",
        "include/cutehmi/modbus/metadata.hpp",
        "src/cutehmi/modbus/AbstractDevice.cpp",
        "src/cutehmi/modbus/Client.cpp",
        "src/cutehmi/modbus/Coil.cpp",
        "src/cutehmi/modbus/DiscreteInput.cpp",
        "src/cutehmi/modbus/Exception.cpp",
        "src/cutehmi/modbus/HoldingRegister.cpp",
        "src/cutehmi/modbus/InputRegister.cpp",
        "src/cutehmi/modbus/Service.cpp",
        "src/cutehmi/modbus/internal/DummyConnection.cpp",
        "src/cutehmi/modbus/internal/LibmodbusConnection.cpp",
        "src/cutehmi/modbus/internal/RTUConnection.cpp",
        "src/cutehmi/modbus/internal/ServiceThread.cpp",
        "src/cutehmi/modbus/internal/TCPConnection.cpp",
        "src/cutehmi/modbus/internal/functions.cpp",
        "src/cutehmi/modbus/logging.cpp",
        "src/cutehmi/modbus/plugin/ModbusNodeData.cpp",
        "src/cutehmi/modbus/plugin/ModbusNodeData.hpp",
        "src/cutehmi/modbus/plugin/PluginNodeData.cpp",
        "src/cutehmi/modbus/plugin/PluginNodeData.hpp",
        "src/cutehmi/modbus/plugin/ProjectPlugin.cpp",
        "src/cutehmi/modbus/plugin/ProjectPlugin.hpp",
    ]

	Depends { name: "Qt.concurrent" }

//<workaround id="qbs-cutehmi-depends-1" target="Qbs" cause="design">

//	cutehmi.depends.reqMinors
	Depends { name: "cutehmi_1" }
	cutehmi_1.reqMinor: 0

	Depends { name: "cutehmi_xml_1" }
	cutehmi_xml_1.reqMinor: 0

	Depends { name: "cutehmi_services_1" }
	cutehmi_services_1.reqMinor: 0

	Depends { name: "cutehmi.libmodbus" }

	Export {
		Depends { name: "Qt.concurrent" }

		Depends { name: "cutehmi_1" }
		cutehmi_1.reqMinor: 0
	}

//</workaround>
}

//(c)MP: Copyright © 2018, Michal Policht. All rights reserved.
//(c)MP: This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
