.class public Lcom/android/settings/cyanogenmod/QuickSettingsUtil;
.super Ljava/lang/Object;
.source "QuickSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;
    }
.end annotation


# static fields
.field public static final TILES:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    .line 63
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleAirplane"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleAirplane"

    const v4, 0x7f080249

    const-string v5, "com.android.systemui:drawable/ic_qs_airplane_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleBattery"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleBattery"

    const v4, 0x7f08024a

    const-string v5, "com.android.systemui:drawable/ic_qs_battery_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleBluetooth"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleBluetooth"

    const v4, 0x7f08024b

    const-string v5, "com.android.systemui:drawable/ic_qs_bluetooth_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleBrightness"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleBrightness"

    const v4, 0x7f08024c

    const-string v5, "com.android.systemui:drawable/ic_qs_brightness_auto_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleExpandedDesktop"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleExpandedDesktop"

    const v4, 0x7f080262

    const-string v5, "com.android.systemui:drawable/ic_qs_expanded_desktop_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSleepMode"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSleepMode"

    const v4, 0x7f08024d

    const-string v5, "com.android.systemui:drawable/ic_qs_sleep"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleGPS"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleGPS"

    const v4, 0x7f08024e

    const-string v5, "com.android.systemui:drawable/ic_qs_gps_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleLockScreen"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleLockScreen"

    const v4, 0x7f080250

    const-string v5, "com.android.systemui:drawable/ic_qs_lock_screen_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleLte"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleLte"

    const v4, 0x7f080251

    const-string v5, "com.android.systemui:drawable/ic_qs_lte_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleMobileData"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleMobileData"

    const v4, 0x7f080252

    const-string v5, "com.android.systemui:drawable/ic_qs_signal_4"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleNetworkMode"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleNetworkMode"

    const v4, 0x7f08025c

    const-string v5, "com.android.systemui:drawable/ic_qs_2g3g_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleNfc"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleNfc"

    const v4, 0x7f08025d

    const-string v5, "com.android.systemui:drawable/ic_qs_nfc_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleAutoRotate"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleAutoRotate"

    const v4, 0x7f080254

    const-string v5, "com.android.systemui:drawable/ic_qs_auto_rotate"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleProfile"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleProfile"

    const v4, 0x7f080253

    const-string v5, "com.android.systemui:drawable/ic_qs_profiles"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleQuietHours"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleQuietHours"

    const v4, 0x7f080260

    const-string v5, "com.android.systemui:drawable/ic_qs_quiet_hours_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleScreenTimeout"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleScreenTimeout"

    const v4, 0x7f08025e

    const-string v5, "com.android.systemui:drawable/ic_qs_screen_timeout_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSettings"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSettings"

    const v4, 0x7f080255

    const-string v5, "com.android.systemui:drawable/ic_qs_settings"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSound"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSound"

    const v4, 0x7f080256

    const-string v5, "com.android.systemui:drawable/ic_qs_ring_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleSync"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleSync"

    const v4, 0x7f080257

    const-string v5, "com.android.systemui:drawable/ic_qs_sync_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleFlashlight"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleFlashlight"

    const v4, 0x7f08024f

    const-string v5, "com.android.systemui:drawable/ic_qs_torch_off"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleUser"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleUser"

    const v4, 0x7f08025b

    const-string v5, "com.android.systemui:drawable/ic_qs_default_user"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleVolume"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleVolume"

    const v4, 0x7f080261

    const-string v5, "com.android.systemui:drawable/ic_qs_volume"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleWifi"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleWifi"

    const v4, 0x7f080259

    const-string v5, "com.android.systemui:drawable/ic_qs_wifi_4"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v1, "toggleWifiAp"

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v3, "toggleWifiAp"

    const v4, 0x7f080258

    const-string v5, "com.android.systemui:drawable/ic_qs_wifi_ap_neutral"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public static getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_settings_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, tiles:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    return-object v0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 199
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v0

    .line 200
    .local v0, bluetoothSupported:Z
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 202
    .local v1, mobileDataSupported:Z
    if-nez v0, :cond_0

    .line 203
    sget-object v2, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v3, "toggleBluetooth"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    if-nez v1, :cond_1

    .line 207
    sget-object v2, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v3, "toggleMobileData"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    const-string v2, "|"

    sget-object v3, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "tiles"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 187
    :cond_0
    const-string v1, ""

    .line 193
    :cond_1
    return-object v1

    .line 189
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static resetTiles(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, defaultTiles:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_settings_tiles"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    return-void
.end method

.method public static saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "tiles"

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_settings_tiles"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    return-void
.end method
