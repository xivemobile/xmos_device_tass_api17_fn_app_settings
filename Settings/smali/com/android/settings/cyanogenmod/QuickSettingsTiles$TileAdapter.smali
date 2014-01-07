.class Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/QuickSettingsTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TileAdapter"
.end annotation


# instance fields
.field mResources:Landroid/content/res/Resources;

.field mTileKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 263
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTileKeys:[Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTileKeys:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mResources:Landroid/content/res/Resources;

    .line 267
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 276
    sget-object v1, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTileKeys:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v0

    .line 278
    .local v0, resid:I
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTileId(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 282
    sget-object v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTileKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
