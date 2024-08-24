.class public Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "VideoBokehColorRetentionFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method

.method private getPositionByMode(I)I
    .locals 4

    const/4 p0, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    :cond_0
    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    :cond_4
    :goto_0
    return p0
.end method


# virtual methods
.method public augmentItemList()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->augmentItemList()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;->getPositionByMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    return-void
.end method

.method public getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "8"

    return-object p0
.end method

.method public initExtraType()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;->getShineType()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget p1, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, p1, v2}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public onClearClick()V
    .locals 0

    return-void
.end method

.method public onResetClick()V
    .locals 0

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/beauty/VideoBokehColorRetentionFragment;->getPositionByMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->setSelectedPosition(I)V

    .line 4
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onViewCreatedAndVisibleToUser(Z)V

    return-void
.end method
