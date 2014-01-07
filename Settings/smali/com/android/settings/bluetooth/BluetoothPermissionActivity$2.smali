.class Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;
.super Landroid/os/Handler;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/settings/bluetooth/BluetoothPermissionActivity;

    #calls: Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onNegative()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->access$200(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
