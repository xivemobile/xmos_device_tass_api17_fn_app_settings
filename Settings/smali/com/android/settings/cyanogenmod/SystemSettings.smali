.class public Lcom/android/settings/cyanogenmod/SystemSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SystemSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBatteryPulse:Landroid/preference/PreferenceScreen;

.field private mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

.field private mExpandedDesktopPref:Landroid/preference/ListPreference;

.field private mIsPrimary:Z

.field private mNotificationPulse:Landroid/preference/PreferenceScreen;

.field private mPieControl:Landroid/preference/PreferenceScreen;

.field private mShowNavbar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBatteryPulseDescription()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08018e

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08018f

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateExpandedDesktop(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, -0x1

    .line 251
    .local v2, summary:I
    const-string v3, "expanded_desktop_style"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    if-nez p1, :cond_2

    .line 255
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    const-string v3, "expanded_desktop_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    const v2, 0x7f08020e

    .line 266
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    return-void

    .line 258
    :cond_2
    if-ne p1, v4, :cond_3

    .line 259
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    const v2, 0x7f08020f

    goto :goto_0

    .line 261
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 262
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    const v2, 0x7f080210

    goto :goto_0
.end method

.method private updateLightPulseDescription()V
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08018e

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f08018f

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePieControlDescription()V
    .locals 3

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pie_controls"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0802c5

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0802c6

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v5, 0x7f050044

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 76
    .local v2, prefScreen:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    .line 79
    .local v3, removeNavbar:Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    .line 80
    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    if-eqz v5, :cond_7

    .line 83
    const-string v5, "battery_light"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 84
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110029

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    iput-object v10, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 93
    :cond_0
    const-string v5, "show_navbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "show_navbar"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 100
    .local v4, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_1

    .line 101
    const/4 v3, 0x1

    .line 108
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 109
    const-string v5, "navigation_bar"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    const-string v5, "navigation_ring"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    const-string v5, "navigation_bar_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    .end local v4           #windowManager:Landroid/view/IWindowManager;
    :cond_2
    :goto_3
    const-string v5, "notification_pulse"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 129
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110028

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 131
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    iput-object v10, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 137
    :cond_3
    const-string v5, "pie_control"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    .line 138
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 140
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    iput-object v10, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    .line 145
    :cond_4
    const-string v5, "expanded_desktop"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    .line 146
    const-string v5, "expanded_desktop_no_navbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "expanded_desktop_style"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 153
    .local v1, expandedDesktopValue:I
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 154
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateExpandedDesktop(I)V

    .line 157
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :goto_4
    const-string v5, "lock_clock"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 169
    return-void

    .end local v1           #expandedDesktopValue:I
    :cond_5
    move v5, v7

    .line 79
    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 94
    goto/16 :goto_1

    .line 115
    :cond_7
    const-string v5, "battery_light"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    const-string v5, "hardware_keys"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    const-string v5, "navigation_bar"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    const-string v5, "navigation_ring"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    const-string v5, "navigation_bar_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    const-string v5, "status_bar"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    const-string v5, "quick_settings_panel"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    const-string v5, "power_menu"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    const-string v5, "notification_drawer"

    invoke-virtual {p0, v5}, Lcom/android/settings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 159
    .restart local v1       #expandedDesktopValue:I
    :cond_8
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    if-lez v1, :cond_9

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "SystemSettings"

    const-string v6, "Error getting navigation bar status"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_9
    move v6, v7

    .line 160
    goto :goto_5

    .line 103
    .end local v1           #expandedDesktopValue:I
    .restart local v4       #windowManager:Landroid/view/IWindowManager;
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 192
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 196
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    .local v0, expandedDesktopValue:I
    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateExpandedDesktop(I)V

    move v2, v3

    .line 205
    .end local v0           #expandedDesktopValue:I
    :cond_0
    :goto_0
    return v2

    .line 199
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 200
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 201
    .local v1, value:Z
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateExpandedDesktop(I)V

    move v2, v3

    .line 202
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 228
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_navbar"

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mShowNavbar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    :goto_1
    return v1

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateLightPulseDescription()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updatePieControlDescription()V

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/SystemSettings;->updateBatteryPulseDescription()V

    .line 187
    :cond_2
    return-void
.end method
