.class public Lcom/android/camera/fragment/idcard/FragmentIDCard;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentIDCard.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/IDCardModeProtocol;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCurrentPictureName:Ljava/lang/String;

.field public mEditPopupTip:Landroid/view/View;

.field public mGotoInputDialog:Landroid/view/View;

.field public mInCard:Ljava/lang/Boolean;

.field public mIsPopupTipReady:Z

.field public mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

.field public mRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string v0, "ID_CARD_PICTURE_1"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mCurrentPictureName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mInCard:Ljava/lang/Boolean;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    return-void
.end method

.method private changeIDCardView(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/idcard/IDCardView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/idcard/IDCardView;-><init>(Landroid/content/Context;Z)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f12045c

    goto :goto_0

    :cond_0
    const v1, 0x7f12045b

    .line 6
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertDocumentTip(I)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "ID_CARD_PICTURE_1"

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->setCurrentPictureName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "ID_CARD_PICTURE_2"

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->setCurrentPictureName(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private hideGotoInputDialog()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->isShowingGotoInputDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private hideOrShowEditPopupTip(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideOrShowPrivacyWatermarkView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->show()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->hide()V

    :goto_0
    return-void
.end method

.method private isShowingGotoInputDialog()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCurrentPictureName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mCurrentPictureName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 4
    const-class p1, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-static {p0, p1}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return-void
.end method

.method public callBackEvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_CARD_PICTURE_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getEntranceMode(I)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeChangeController;->impl2()Lcom/android/camera/protocol/protocols/ModeChangeController;

    move-result-object v1

    const v2, 0x7f120822

    .line 5
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, v2}, Lcom/android/camera/protocol/protocols/ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public getCurrentPictureName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mCurrentPictureName:Ljava/lang/String;

    return-object p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xffff0

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d008d

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0a01ee

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    const v1, 0x7f0a04ac

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v2, 0x7f0a04b3

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v3, 0x7f0a04b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v4, 0x7f0a04b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    iget-object v4, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v5, 0x7f0a04b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f12035f

    .line 8
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f12035e

    .line 9
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f12035d

    .line 10
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f12035c

    .line 11
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 12
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00oO0o/OooO00o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00oO0o/OooO00o;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00oO0o/OooO0O0;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00oO0o/OooO0O0;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 16
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00oO0o/OooO0OO;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00oO0o/OooO0OO;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0353

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    .line 18
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setRotation(I)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setViewSize(II)V

    .line 22
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a033a

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f0a033e

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120629

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f0a033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->togglePrivacyWatermarkView(Z)V

    .line 30
    iput-boolean v2, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mInCard:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb6

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setPrivacyWatermark(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowPrivacyWatermarkView(Z)V

    .line 10
    iget-boolean v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    if-nez v1, :cond_6

    .line 11
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 13
    :goto_1
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x7f07034d

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    .line 14
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 15
    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    sub-float/2addr v7, v1

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr v7, v1

    .line 16
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    neg-float v3, v3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    .line 18
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/camera/fragment/idcard/IDCardView;->getIDCardViewScale()F

    move-result v7

    goto :goto_3

    .line 20
    :cond_5
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/android/camera/fragment/idcard/IDCardView;->getIDCardViewScale()F

    move-result v7

    :goto_3
    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 22
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr v3, v1

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 26
    :goto_4
    iput-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    :cond_6
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->isShowingGotoInputDialog()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb6

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->callBackEvent()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a033a

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 5
    const-class p1, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-static {p0, p1}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a033b

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/protocols/BackStack;->removeBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    const-string v0, "ID_CARD_PICTURE_1"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->setCurrentPictureName(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/BackStack;->addInBackStack(Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowPrivacyWatermarkView(Z)V

    const/16 v0, 0xb6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mInCard:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isIdCardPictureOne(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isIdCardPictureTwo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    .line 8
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 9
    iget-object p3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public showGotoInputDialog()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->isShowingGotoInputDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public switchNextPage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isIdCardPictureOne(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    :cond_0
    return-void
.end method

.method public togglePrivacyWatermarkView(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowPrivacyWatermarkView(Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/IDCardModeProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return-void
.end method
