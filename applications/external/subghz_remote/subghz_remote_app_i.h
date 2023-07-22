#pragma once

#include "helpers/subrem_types.h"
#include "helpers/subrem_presets.h"
#include "scenes/subrem_scene.h"

#include "helpers/txrx/subghz_txrx.h"

#include <assets_icons.h>

#include "views/remote.h"

#include <gui/gui.h>
#include <gui/view_dispatcher.h>
#include <gui/scene_manager.h>
#include <gui/modules/submenu.h>
#include <gui/modules/widget.h>
#include <gui/modules/text_input.h>
#include <gui/modules/popup.h>
#include <dialogs/dialogs.h>
#include <notification/notification_messages.h>
#include <storage/storage.h>

#include <flipper_format/flipper_format_i.h>

#define SUBREM_APP_FOLDER EXT_PATH("subghz/remote")
#define SUBREM_MAX_LEN_NAME 64

typedef struct {
    Gui* gui;
    ViewDispatcher* view_dispatcher;
    SceneManager* scene_manager;
    NotificationApp* notifications;
    DialogsApp* dialogs;
    Submenu* submenu;

    FuriString* file_path;

    SubRemViewRemote* subrem_remote_view;

    SubRemMapPreset* map_preset;

    SubGhzTxRx* txrx;

    uint8_t chusen_sub;
} SubGhzRemoteApp;

SubRemLoadMapState subrem_load_from_file(SubGhzRemoteApp* app);

bool subrem_tx_start_sub(SubGhzRemoteApp* app, SubRemSubFilePreset* sub_preset);

bool subrem_tx_stop_sub(SubGhzRemoteApp* app, bool forced);

void subrem_save_active_sub(void* context);

SubRemLoadMapState subrem_map_file_load(SubGhzRemoteApp* app, const char* file_path);
