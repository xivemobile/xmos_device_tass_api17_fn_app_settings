.class public Lcom/android/settings/cyanogenmod/QuickSettingsTiles;
.super Landroid/app/Fragment;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;,
        Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

.field mInflater:Landroid/view/LayoutInflater;

.field mSystemUiResources:Landroid/content/res/Resources;

.field mTileAdapter:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 288
    return-void
.end method

.method private getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, resId:I
    if-lez v0, :cond_1

    .line 100
    :try_start_0
    const-string v1, "dimen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 109
    .end local v0           #resId:I
    :goto_0
    return v1

    .line 103
    .restart local v0       #resId:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 109
    .end local v0           #resId:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetTiles()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080276

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 245
    const v1, 0x7f080277

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 246
    const v1, 0x7f080072

    new-instance v2, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$3;-><init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    const v1, 0x7f0803fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 254
    return-void
.end method


# virtual methods
.method addTile(ILjava/lang/String;IZ)V
    .locals 12
    .parameter "titleId"
    .parameter "iconSysId"
    .parameter "iconRegId"
    .parameter "newTile"

    .prologue
    .line 132
    const/4 v6, 0x0

    .line 133
    .local v6, tileView:Landroid/view/View;
    if-eqz p3, :cond_1

    .line 134
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040091

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 135
    const v8, 0x7f0c0147

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 136
    .local v4, name:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, p3, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 164
    .end local v4           #name:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    if-eqz p4, :cond_4

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v8}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_1
    invoke-virtual {v9, v6, v8}, Lcom/android/settings/cyanogenmod/DraggableGridView;->addView(Landroid/view/View;I)V

    .line 165
    return-void

    .line 139
    :cond_1
    sget-object v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    const-string v9, "toggleUser"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    invoke-virtual {v8}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v8

    if-ne p1, v8, :cond_2

    const/4 v2, 0x1

    .line 140
    .local v2, isUserTile:Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 141
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 144
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 146
    if-eqz v2, :cond_3

    .line 147
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040092

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 148
    const v8, 0x7f0c0148

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 149
    .local v3, iv:Landroid/widget/ImageView;
    const v8, 0x7f0c0147

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 150
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v7           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #isUserTile:Z
    .end local v5           #resId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 153
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #isUserTile:Z
    .restart local v5       #resId:I
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040091

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 154
    const v8, 0x7f0c0147

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .restart local v4       #name:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 164
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #isUserTile:Z
    .end local v4           #name:Landroid/widget/TextView;
    .end local v5           #resId:I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v8}, Lcom/android/settings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v8

    goto :goto_1
.end method

.method genTiles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 113
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v4}, Lcom/android/settings/cyanogenmod/DraggableGridView;->removeAllViews()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, tileindex:Ljava/lang/String;
    sget-object v4, Lcom/android/settings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;

    .line 117
    .local v1, tile:Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 121
    .end local v1           #tile:Lcom/android/settings/cyanogenmod/QuickSettingsUtil$TileInfo;
    .end local v2           #tileindex:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0800be

    const/4 v5, 0x0

    const v6, 0x7f020069

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    .line 122
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->genTiles()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    new-instance v1, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$1;-><init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setOnRearrangeListener(Lcom/android/settings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    new-instance v1, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$2;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$2;-><init>(Lcom/android/settings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->setHasOptionsMenu(Z)V

    .line 211
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 224
    const/4 v0, 0x1

    const v1, 0x7f0800cc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 229
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 60
    new-instance v7, Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/cyanogenmod/DraggableGridView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    .line 61
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    .line 62
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 63
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 66
    .local v6, pm:Landroid/content/pm/PackageManager;
    if-eqz v6, :cond_0

    .line 68
    :try_start_0
    const-string v7, "com.android.systemui"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    const-string v7, "notification_panel_width"

    const-string v8, "dimen"

    invoke-direct {p0, v7, v8}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, panelWidth:I
    if-eqz v4, :cond_1

    .line 75
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v5, v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 77
    .local v5, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v5}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v5           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const-string v7, "quick_settings_cell_height"

    const-string v8, "dimen"

    invoke-direct {p0, v7, v8}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, cellHeight:I
    if-eqz v1, :cond_2

    .line 81
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v1}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setCellHeight(I)V

    .line 83
    :cond_2
    const-string v7, "quick_settings_cell_gap"

    const-string v8, "dimen"

    invoke-direct {p0, v7, v8}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, cellGap:I
    if-eqz v0, :cond_3

    .line 85
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v0}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setCellGap(I)V

    .line 87
    :cond_3
    const-string v7, "quick_settings_num_columns"

    const-string v8, "integer"

    invoke-direct {p0, v7, v8}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 88
    .local v2, columnCount:I
    if-eqz v2, :cond_4

    .line 89
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v2}, Lcom/android/settings/cyanogenmod/DraggableGridView;->setColumnCount(I)V

    .line 91
    :cond_4
    new-instance v7, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mTileAdapter:Lcom/android/settings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    .line 92
    iget-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/settings/cyanogenmod/DraggableGridView;

    return-object v7

    .line 69
    .end local v0           #cellGap:I
    .end local v1           #cellHeight:I
    .end local v2           #columnCount:I
    .end local v4           #panelWidth:I
    :catch_0
    move-exception v3

    .line 70
    .local v3, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->resetTiles()V

    .line 236
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 219
    :cond_0
    return-void
.end method
