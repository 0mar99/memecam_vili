.class public Lcom/android/camera/fragment/FragmentDocView;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDocView.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/DocViewProtocol;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff9

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mDocumentView:Lcom/android/camera/ui/DocumentView;

.field public mEditPopupTip:Landroid/view/View;

.field public mGotoInputDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mIsDialogConfirmed:Z

.field public mIsFirstInit:Z

.field public mIsPopupTipReady:Z

.field public mLastZoomVisibility:Z

.field public mNeedAdjustEditPopupTipPosition:Z

.field public mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/FragmentDocView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsDialogConfirmed:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsFirstInit:Z

    return-void
.end method

.method private hideOrShowEditPopupTip(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideOrShowPrivacyWatermarkView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->show()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->hide()V

    :goto_0
    return-void
.end method

.method private isEditPopupTipShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

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

.method private updateEditPopupTipBackground()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private updateView(I)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AppController;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Util.getCameraPreviewRect() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , preview Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/DocumentView;->setDisplaySize(II)V

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    iget v3, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/ui/DocumentView;->setPreviewSize(II)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 9
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 14
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setViewSize(II)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setPrivacyWatermark(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowPrivacyWatermarkView(Z)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 18
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    .line 19
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    if-eqz p1, :cond_5

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706f5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 21
    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 22
    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsFirstInit:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/16 v2, 0xba

    .line 23
    invoke-static {v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomVisible(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    .line 24
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsFirstInit:Z

    .line 25
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v2

    if-nez v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0703e4

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v0, p1

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    .line 29
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    .line 30
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsDialogConfirmed:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 5
    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-static {p1, v0}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsDialogConfirmed:Z

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsDialogConfirmed:Z

    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff9

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d007e

    return p0
.end method

.method public hideOrShowDocument(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DocumentView;->hideOrShowPath(Z)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    const-string v1, "initView: started"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0130

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/DocumentView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const v0, 0x7f0a0353

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    const v0, 0x7f0a033a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f0a033e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120629

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f0a033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->togglePrivacyWatermarkView(Z)V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->updateView(I)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->notifyThemeChanged(ILjava/util/List;I)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->isEditPopupTipShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

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
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
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

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowPrivacyWatermarkView(Z)V

    const/16 p2, 0xba

    .line 4
    invoke-static {p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomVisible(I)Z

    move-result p2

    .line 5
    iget-boolean p3, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    if-eq p3, p2, :cond_0

    .line 6
    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    .line 7
    sget-object p3, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastZoomVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", newZoomVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    .line 9
    :cond_0
    iget-boolean p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    if-eqz p2, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideRotateItem: newDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0, p2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setRotation(I)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/DocViewProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public showGotoInputDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mGotoInputDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12035f

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12035e

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12035d

    new-instance v2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0o;-><init>(Lcom/android/camera/fragment/FragmentDocView;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12035c

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0oO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Oooo0oO;-><init>(Lcom/android/camera/fragment/FragmentDocView;)V

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mGotoInputDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mGotoInputDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public togglePrivacyWatermarkView(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowPrivacyWatermarkView(Z)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/DocViewProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mGotoInputDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mGotoInputDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public updateDocument(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    array-length v1, v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DocumentView;->updateDocument(Landroid/util/Pair;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->updateView(I)V

    return-void
.end method
