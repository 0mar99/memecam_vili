.class public Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyFragment;
.source "BokehSmoothLevelFragment.java"


# instance fields
.field public mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field public mSeekBarMaxProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mSeekBarMaxProgress:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0094

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SeekBarCompat;

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/16 p1, 0x64

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mSeekBarMaxProgress:I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result p1

    float-to-int p1, p1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setSupportShowValue(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080981

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mSeekBarMaxProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setSeekBarPinProgress(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const v0, 0x7f120431

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment$1;-><init>(Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewCreatedAndJumpOut()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndJumpOut()V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public onViewCreatedAndVisibleToUser(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->onViewCreatedAndVisibleToUser(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BokehSmoothLevelFragment;->mAdjustSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz p1, :cond_0

    .line 3
    iget p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyFragment;->mDegree:I

    invoke-virtual {p1, p0}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    :cond_0
    return-void
.end method
