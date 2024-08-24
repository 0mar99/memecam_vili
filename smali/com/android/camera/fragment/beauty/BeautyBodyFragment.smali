.class public Lcom/android/camera/fragment/beauty/BeautyBodyFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "BeautyBodyFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BeautyBodyFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getShineType()Ljava/lang/String;
    .locals 0

    const-string p0, "6"

    return-object p0
.end method

.method public initExtraType()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->impl2()Lcom/android/camera/protocol/protocols/MakeupProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BeautyBodyFragment;->getShineType()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/camera/protocol/protocols/MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3
    :cond_0
    iget-object p0, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string p1, "6"

    invoke-static {p1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClearClick()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->clearBeauty()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    return-void
.end method

.method public onResetClick()V
    .locals 2

    const-string v0, "BeautyBodyFragment"

    const-string/jumbo v1, "onResetClick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->resetBeauty()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    :cond_0
    const-string p0, "6"

    const-string v0, "RESET"

    .line 6
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
