.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DUNStateChangedHandler;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DUNStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DUNStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DUNStateChangedHandler;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    check-cast v1, Lcom/android/settings/bluetooth/DUNProfile;

    .line 288
    .local v1, dunProfile:Lcom/android/settings/bluetooth/DUNProfile;
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 289
    .local v2, state:I
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUNStateChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DUNStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    #getter for: Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 291
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 292
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$DUNStateChangedHandler;->mProfile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    .line 293
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 295
    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/DUNProfile;->setConnectionStatus(I)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v3, "LocalBluetoothProfileManager"

    const-string v4, "No Cached device!,  shouldn\'t reach here"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
