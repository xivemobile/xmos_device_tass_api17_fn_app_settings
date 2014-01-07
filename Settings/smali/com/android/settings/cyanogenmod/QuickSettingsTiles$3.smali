.class Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->resetTiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->resetTiles(Landroid/content/Context;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;->this$0:Lcom/android/settings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->genTiles()V

    .line 250
    return-void
.end method
