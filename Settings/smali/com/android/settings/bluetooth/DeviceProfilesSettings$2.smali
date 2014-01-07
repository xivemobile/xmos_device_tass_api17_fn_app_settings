.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 325
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "removing profile to disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectingProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$202(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 327
    return-void
.end method
