.class final Lcom/android/settings/bluetooth/DUNProfile;
.super Ljava/lang/Object;
.source "DUNProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# instance fields
.field private mConnectionStatus:I

.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/BluetoothDUN;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/bluetooth/DUNProfile;->mConnectionStatus:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DUNProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroid/bluetooth/BluetoothDUN;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDUN;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DUNProfile;->mService:Landroid/bluetooth/BluetoothDUN;

    .line 51
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings/bluetooth/DUNProfile;->mService:Landroid/bluetooth/BluetoothDUN;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDUN;->disconnect()Z

    move-result v0

    .line 67
    .local v0, ret:Z
    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/settings/bluetooth/DUNProfile;->mConnectionStatus:I

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 122
    const v0, 0x7f020056

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 103
    const v0, 0x7f0804a8

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 83
    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DUNProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 108
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 110
    :pswitch_1
    const v1, 0x7f0804c3

    goto :goto_0

    .line 113
    :pswitch_2
    const v1, 0x7f0804b8

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public setConnectionStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/bluetooth/DUNProfile;->mConnectionStatus:I

    .line 76
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .parameter "device"
    .parameter "preferred"

    .prologue
    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "DUN"

    return-object v0
.end method
