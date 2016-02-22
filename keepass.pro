TARGET = KeePass
TEMPLATE = app

QT += core gui widgets uitools concurrent
CONFIG += C++11

LIBS += -lz
android: {
  INCLUDEPATH += 3rdParty/include
  LIBS += -L$$PWD/3rdParty/lib/armv7 -lssl  -lgcrypt -lgpg-error
} blackberry: {
 INCLUDEPATH += $$PWD/3rdParty/BlackBerry/include
 LIBS += -lssl -lintl -liconv -L$$PWD/3rdParty/BlackBerry/lib -lgcrypt -lgpg-error
} else {
  LIBS += -lssl -lgcrypt
}

INCLUDEPATH += \
    src \
    src/core \
    src/crypto \
    src/format \
    src/autotype \
    src/gui \
    src/keys \
    src/streams \
    utils

SOURCES += \
    src/main.cpp \
    src/core/AutoTypeAssociations.cpp \
    src/core/Config.cpp \
    src/core/Database.cpp \
    src/core/DatabaseIcons.cpp \
    src/core/Endian.cpp \
    src/core/Entry.cpp \
    src/core/EntryAttachments.cpp \
    src/core/EntryAttributes.cpp \
    src/core/EntrySearcher.cpp \
    src/core/FilePath.cpp \
    src/core/Group.cpp \
    src/core/InactivityTimer.cpp \
    src/core/Metadata.cpp \
    src/core/PasswordGenerator.cpp \
    src/core/SignalMultiplexer.cpp \
    src/core/TimeDelta.cpp \
    src/core/TimeInfo.cpp \
    src/core/ToDbExporter.cpp \
    src/core/Tools.cpp \
    src/core/Translator.cpp \
    src/core/Uuid.cpp \
    src/crypto/Crypto.cpp \
    src/crypto/CryptoHash.cpp \
    src/crypto/Random.cpp \
    src/crypto/SymmetricCipher.cpp \
    src/crypto/SymmetricCipherGcrypt.cpp \
    src/format/CsvExporter.cpp \
    src/format/KeePass1Reader.cpp \
    src/format/KeePass2RandomStream.cpp \
    src/format/KeePass2Reader.cpp \
    src/format/KeePass2Repair.cpp \
    src/format/KeePass2Writer.cpp \
    src/format/KeePass2XmlReader.cpp \
    src/format/KeePass2XmlWriter.cpp \
    src/autotype/test/AutoTypeTest.cpp \
    src/autotype/AutoType.cpp \
    src/autotype/AutoTypeAction.cpp \
    src/autotype/AutoTypeSelectDialog.cpp \
    src/autotype/AutoTypeSelectView.cpp \
    src/autotype/ShortcutWidget.cpp \
    src/autotype/WildcardMatcher.cpp \
    src/autotype/WindowSelectComboBox.cpp \
    src/gui/entry/AutoTypeAssociationsModel.cpp \
    src/gui/entry/EditEntryWidget.cpp \
    src/gui/entry/EntryAttachmentsModel.cpp \
    src/gui/entry/EntryAttributesModel.cpp \
    src/gui/entry/EntryHistoryModel.cpp \
    src/gui/entry/EntryModel.cpp \
    src/gui/entry/EntryView.cpp \
    src/gui/group/EditGroupWidget.cpp \
    src/gui/group/GroupModel.cpp \
    src/gui/group/GroupView.cpp \
    src/gui/AboutDialog.cpp \
    src/gui/Application.cpp \
    src/gui/ChangeMasterKeyWidget.cpp \
    src/gui/Clipboard.cpp \
    src/gui/DatabaseOpenWidget.cpp \
    src/gui/DatabaseRepairWidget.cpp \
    src/gui/DatabaseSettingsWidget.cpp \
    src/gui/DatabaseTabWidget.cpp \
    src/gui/DatabaseWidget.cpp \
    src/gui/DatabaseWidgetStateSync.cpp \
    src/gui/DialogyWidget.cpp \
    src/gui/DragTabBar.cpp \
    src/gui/EditWidget.cpp \
    src/gui/EditWidgetIcons.cpp \
    src/gui/EditWidgetProperties.cpp \
    src/gui/FileDialog.cpp \
    src/gui/IconModels.cpp \
    src/gui/KeePass1OpenWidget.cpp \
    src/gui/LineEdit.cpp \
    src/gui/MainWindow.cpp \
    src/gui/MessageBox.cpp \
    src/gui/PasswordComboBox.cpp \
    src/gui/PasswordEdit.cpp \
    src/gui/PasswordGeneratorWidget.cpp \
    src/gui/SettingsWidget.cpp \
    src/gui/SortFilterHideProxyModel.cpp \
    src/gui/UnlockDatabaseWidget.cpp \
    src/gui/WelcomeWidget.cpp \
    src/keys/CompositeKey.cpp \
    src/keys/FileKey.cpp \
    src/keys/PasswordKey.cpp \
    src/streams/HashedBlockStream.cpp \
    src/streams/LayeredStream.cpp \
    src/streams/qtiocompressor.cpp \
    src/streams/StoreDataStream.cpp \
    src/streams/SymmetricCipherStream.cpp

HEADERS += \
    src/core/AutoTypeAssociations.h \
    src/core/Config.h \
    src/core/Database.h \
    src/core/DatabaseIcons.h \
    src/core/Endian.h \
    src/core/Entry.h \
    src/core/EntryAttachments.h \
    src/core/EntryAttributes.h \
    src/core/EntrySearcher.h \
    src/core/Exporter.h \
    src/core/FilePath.h \
    src/core/Global.h \
    src/core/Group.h \
    src/core/InactivityTimer.h \
    src/core/ListDeleter.h \
    src/core/Metadata.h \
    src/core/PasswordGenerator.h \
    src/core/SignalMultiplexer.h \
    src/core/TimeDelta.h \
    src/core/TimeInfo.h \
    src/core/ToDbExporter.h \
    src/core/Tools.h \
    src/core/Translator.h \
    src/core/Uuid.h \
    src/crypto/Crypto.h \
    src/crypto/CryptoHash.h \
    src/crypto/Random.h \
    src/crypto/SymmetricCipher.h \
    src/crypto/SymmetricCipherBackend.h \
    src/crypto/SymmetricCipherGcrypt.h \
    src/format/CsvExporter.h \
    src/format/KeePass1.h \
    src/format/KeePass1Reader.h \
    src/format/KeePass2.h \
    src/format/KeePass2RandomStream.h \
    src/format/KeePass2Reader.h \
    src/format/KeePass2Repair.h \
    src/format/KeePass2Writer.h \
    src/format/KeePass2XmlReader.h \
    src/format/KeePass2XmlWriter.h \
    src/autotype/test/AutoTypeTest.h \
    src/autotype/test/AutoTypeTestInterface.h \
    src/autotype/AutoType.h \
    src/autotype/AutoTypeAction.h \
    src/autotype/AutoTypePlatformPlugin.h \
    src/autotype/AutoTypeSelectDialog.h \
    src/autotype/AutoTypeSelectView.h \
    src/autotype/ShortcutWidget.h \
    src/autotype/WildcardMatcher.h \
    src/autotype/WindowSelectComboBox.h \
    src/gui/entry/AutoTypeAssociationsModel.h \
    src/gui/entry/EditEntryWidget.h \
    src/gui/entry/EditEntryWidget_p.h \
    src/gui/entry/EntryAttachmentsModel.h \
    src/gui/entry/EntryAttributesModel.h \
    src/gui/entry/EntryHistoryModel.h \
    src/gui/entry/EntryModel.h \
    src/gui/entry/EntryView.h \
    src/gui/group/EditGroupWidget.h \
    src/gui/group/GroupModel.h \
    src/gui/group/GroupView.h \
    src/gui/AboutDialog.h \
    src/gui/Application.h \
    src/gui/ChangeMasterKeyWidget.h \
    src/gui/Clipboard.h \
    src/gui/DatabaseOpenWidget.h \
    src/gui/DatabaseRepairWidget.h \
    src/gui/DatabaseSettingsWidget.h \
    src/gui/DatabaseTabWidget.h \
    src/gui/DatabaseWidget.h \
    src/gui/DatabaseWidgetStateSync.h \
    src/gui/DialogyWidget.h \
    src/gui/DragTabBar.h \
    src/gui/EditWidget.h \
    src/gui/EditWidgetIcons.h \
    src/gui/EditWidgetProperties.h \
    src/gui/FileDialog.h \
    src/gui/IconModels.h \
    src/gui/KeePass1OpenWidget.h \
    src/gui/LineEdit.h \
    src/gui/MainWindow.h \
    src/gui/MessageBox.h \
    src/gui/PasswordComboBox.h \
    src/gui/PasswordEdit.h \
    src/gui/PasswordGeneratorWidget.h \
    src/gui/SettingsWidget.h \
    src/gui/SortFilterHideProxyModel.h \
    src/gui/UnlockDatabaseWidget.h \
    src/gui/WelcomeWidget.h \
    src/keys/CompositeKey.h \
    src/keys/CompositeKey_p.h \
    src/keys/FileKey.h \
    src/keys/Key.h \
    src/keys/PasswordKey.h \
    src/streams/HashedBlockStream.h \
    src/streams/LayeredStream.h \
    src/streams/qtiocompressor.h \
    src/streams/StoreDataStream.h \
    src/streams/SymmetricCipherStream.h \

DISTFILES +=

FORMS += \
    src/gui/AboutDialog.ui \
    src/gui/entry/EditEntryWidgetAdvanced.ui \
    src/gui/entry/EditEntryWidgetAutoType.ui \
    src/gui/entry/EditEntryWidgetHistory.ui \
    src/gui/entry/EditEntryWidgetMain.ui \
    src/gui/group/EditGroupWidgetMain.ui \
    src/gui/ChangeMasterKeyWidget.ui \
    src/gui/DatabaseOpenWidget.ui \
    src/gui/DatabaseSettingsWidget.ui \
    src/gui/EditWidget.ui \
    src/gui/EditWidgetIcons.ui \
    src/gui/EditWidgetProperties.ui \
    src/gui/MainWindow.ui \
    src/gui/PasswordGeneratorWidget.ui \
    src/gui/SearchWidget.ui \
    src/gui/SettingsWidgetGeneral.ui \
    src/gui/SettingsWidgetSecurity.ui \
    src/gui/WelcomeWidget.ui

