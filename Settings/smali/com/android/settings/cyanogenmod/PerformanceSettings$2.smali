.class Lcom/android/settings/cyanogenmod/PerformanceSettings$2;
.super Ljava/lang/Object;
.source "PerformanceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/PerformanceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/PerformanceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/PerformanceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings$2;->this$0:Lcom/android/settings/cyanogenmod/PerformanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/PerformanceSettings$2;->this$0:Lcom/android/settings/cyanogenmod/PerformanceSettings;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/PerformanceSettings;->finish()V

    .line 90
    return-void
.end method