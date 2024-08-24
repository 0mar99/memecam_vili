.class public Lcom/android/camera/fragment/FragmentFNumberAdjust;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFNumberAdjust.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/FNumberController;
.implements Lcom/android/camera/protocol/protocols/HandleBackTrace;
.implements Lcom/android/camera/fragment/manually/ZoomValueListener;
.implements Lio/reactivex/functions/Consumer;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentFNumberAdjust$FNumberShowState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BaseFragment;",
        "Lcom/android/camera/protocol/protocols/FNumberController;",
        "Lcom/android/camera/protocol/protocols/HandleBackTrace;",
        "Lcom/android/camera/fragment/manually/ZoomValueListener;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xffb

.field public static final HIDE_TIP:I = 0x1

.field public static final SEEKBAR_PROGRESS_RATIO:I = 0x1

.field public static final SHOW_BEAUTY_LENS:I = 0x0

.field public static final SHOW_BOKEH:I = 0x1

.field public static final SHOW_FNUMBER:I = 0x2

.field public static final SHOW_NONE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FragmentFNumberAdjust"


# instance fields
.field public mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

.field public mBeautyLensListContainer:Landroid/widget/FrameLayout;

.field public mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

.field public mBottomTextViewHeight:I

.field public mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

.field public mCurrentIndex:I

.field public mCurrentShowState:I

.field public mFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFnumberSlideTip:Landroid/widget/TextView;

.field public mFnumberSlideTipLayout:Landroid/view/View;

.field public mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

.field public mHandler:Landroid/os/Handler;

.field public mHolderHeight:I

.field public mHolderWidth:I

.field public mLastIndex:I

.field public mLastShowState:I

.field public mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mParentLayout:Landroid/widget/LinearLayout;

.field public mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

.field public mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

.field public mSupportShowType:I

.field public mTextView:Landroid/widget/TextView;

.field public mTotalWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    .line 4
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastShowState:I

    .line 6
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    .line 7
    new-instance v0, Lcom/android/camera/fragment/FragmentFNumberAdjust$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust$4;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/FragmentFNumberAdjust;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lcom/android/camera/ui/SeekBarCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->resetSlideTip()V

    return-void
.end method

.method private initAdjustSeekBar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setSupportShowValue(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080981

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setCenterTwoWayMode(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFNumber()Lcom/android/camera/data/data/config/ComponentRunningFNumber;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentRunningFNumber;->getFNumberProgress()I

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/FragmentFNumberAdjust$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust$2;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/FragmentFNumberAdjust$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust$1;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    .line 14
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    new-instance v1, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;-><init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V

    return-void
.end method

.method private initSlideFNumberView()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/fragment/manually/ZoomValueListener;)V

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->mapValueToPosition(Ljava/lang/Object;)F

    move-result v0

    float-to-int v0, v0

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(I)V

    return-void
.end method

.method private initSlideTipRotation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f070776

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07077e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private isVisible(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyItemChanged(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    .line 3
    new-instance v2, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Lcom/android/camera/fragment/EffectItemAdapter$ItemChangeData;-><init>(ZI)V

    const/4 v4, -0x1

    if-le p1, v4, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/data/data/ComponentDataItem;

    iget v5, v5, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 6
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const v5, 0x7f12047d

    :goto_0
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v5, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    if-le p2, v4, :cond_5

    .line 9
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 11
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4, v0, v3}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p2, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_5
    if-nez p2, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12020f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070142

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 19
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    if-nez p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    const p1, 0x7f120205

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private onItemSelected(IZ)V
    .locals 6

    const-string v0, "invalid filter id: "

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentMode = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", DataRepository.dataItemGlobal().getCurrentMode() = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "FragmentFNumberAdjust"

    .line 3
    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p2

    if-nez p2, :cond_0

    const-string/jumbo p0, "onItemSelected: configChanges = null"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    if-lez v3, :cond_1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onItemSelected: beautyLensValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " displayNameRes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "attr_beauty_lens_id"

    const-string v4, "click"

    .line 11
    invoke-static {v3, v2, v4}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p2, v2}, Lcom/android/camera/protocol/protocols/ConfigChanges;->setBeautyLens(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->selectItem(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private resetSlideTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTipLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private scrollIfNeed(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private selectItem(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->scrollIfNeed(I)V

    .line 4
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->notifyItemChanged(II)V

    :cond_0
    return-void
.end method

.method private showOrHideBottomMenu(ZZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p0, v0, p2}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-interface {p0, p1, v0}, Lcom/android/camera/protocol/protocols/ModeSelector;->setModeLayoutVisibility(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private toHideBokehPanel(Z)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toHideBokehPanel mSupportShowType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentFNumberAdjust"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    if-nez v0, :cond_0

    return v3

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->resetSlideTip()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v3}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, v3, v3}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    invoke-direct {p0, v2, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBottomMenu(ZZ)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    .line 14
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return v2

    :cond_4
    if-ne v0, v2, :cond_8

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-nez p1, :cond_5

    return v3

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 23
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 24
    invoke-interface {p1, v2}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 25
    :cond_7
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return v2

    :cond_8
    return v3
.end method

.method private updateImageBokehIndicatorUiMargin(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->readFNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->writeFNumber(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    .line 6
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onBokehFNumberValueChanged(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xffb

    return p0
.end method

.method public getLastIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastIndex:I

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0087

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a01af

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;)V

    const v0, 0x7f0a01b0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a01b2

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTipLayout:Landroid/view/View;

    const v0, 0x7f0a01b1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    .line 6
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getShadowStyleRes()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/customization/ThemeResource;->setTextShadowStyle(Landroid/widget/TextView;I)V

    const v0, 0x7f0a0091

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0090

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "beauty_lens_list"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v0, Lcom/android/camera/fragment/DefaultItemAnimator;

    invoke-direct {v0}, Lcom/android/camera/fragment/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTotalWidth:I

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderWidth:I

    .line 20
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHolderHeight:I

    const v0, 0x7f0a0092

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SeekBarCompat;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    const v0, 0x7f0a008d

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    .line 23
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public isAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isDummySystemEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
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
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p3

    const v0, 0x7f06032f

    invoke-virtual {p3, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    if-ne p1, p2, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    :cond_2
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2
    :goto_0
    iget v3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    return v1

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->toHideBeautyLensPanel()Z

    move-result p1

    if-nez p1, :cond_4

    xor-int/lit8 p1, v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->toHideBokehPanel(Z)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    if-nez v0, :cond_5

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->impl2()Lcom/android/camera/protocol/protocols/BottomPopupTips;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BottomPopupTips;->reInitTipImage()V

    .line 6
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    :cond_5
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    const-string v1, "FragmentFNumberAdjust"

    if-nez v0, :cond_0

    const-string p0, "ignore click due to disabled"

    .line 2
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraAction;->impl2()Lcom/android/camera/protocol/protocols/CameraAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ignore click due to doing action"

    .line 5
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    if-ne v1, v0, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x8000

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->onItemSelected(IZ)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/SeekBarCompat;->clean()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->resetSlideTip()V

    .line 4
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onManuallyDataChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isInModeChanging()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 4
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onBokehFNumberValueChanged(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    .line 7
    invoke-interface {p2, v1, v0, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->isSupportSlideViewShowValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTipLayout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideTip:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideTipRotation()V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public onZoomItemSlideOn(IZ)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->canProvide()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x7

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, p2, v0}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;IF)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o0()V

    :cond_1
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    const-string v1, "4x3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v1

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_4

    const/4 p3, 0x5

    goto :goto_2

    :cond_4
    const/4 p3, 0x4

    .line 8
    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->onBackEvent(I)Z

    const/16 p3, 0xab

    const/4 v0, -0x1

    if-ne p1, p3, :cond_9

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOoO()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isLightingVersion1(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningLighting()Lcom/android/camera/data/data/runing/ComponentRunningLighting;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportBeautyLensDevice()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iput v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    .line 16
    iput v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningBeautyLens()Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    .line 18
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationPanel()Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    invoke-interface {p1, p2, p3, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;->getEffectItemAdapter(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)Lcom/android/camera/fragment/EffectItemAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    goto :goto_4

    .line 19
    :cond_6
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    .line 20
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    .line 22
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    goto :goto_4

    .line 23
    :cond_7
    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    .line 24
    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    goto :goto_4

    .line 25
    :cond_8
    :goto_3
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    .line 26
    :cond_9
    :goto_4
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastShowState:I

    iget p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    if-ne p1, p2, :cond_a

    return-void

    .line 27
    :cond_a
    iput p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLastShowState:I

    .line 28
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MasterFilterProtocol;

    move-result-object p2

    if-eqz p1, :cond_b

    .line 30
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    if-eqz p2, :cond_d

    .line 31
    invoke-interface {p2}, Lcom/android/camera/protocol/protocols/expandable/Expandable;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 32
    :cond_c
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    .line 33
    :cond_d
    iget p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    if-eq p1, v0, :cond_e

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 38
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    .line 39
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    .line 40
    :cond_e
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 41
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 45
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_f
    :goto_5
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 3
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
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBarCompat;->setDegree(I)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideTipRotation()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->getItemCount()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/FNumberController;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    return-void
.end method

.method public scrollFnumberSlide(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    neg-float v1, v1

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_0
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1

    neg-float v0, v0

    neg-float v1, v1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 8
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalZoomView;->onTouch(Landroid/view/MotionEvent;)V

    :cond_3
    return-void
.end method

.method public showBeautyLensPanel()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    const-string v1, "FragmentFNumberAdjust"

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "beauty panel shown. do not show the slide view."

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showBeautyLensPanel"

    .line 4
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mComponentRunningBeautyLens:Lcom/android/camera/data/data/runing/ComponentRunningBeautyLens;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/EffectItemAdapter;->setRotation(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mAdapter:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/EffectItemAdapter;->setOnEffectItemListener(Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;)V

    .line 11
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    .line 14
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 19
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f120205

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 24
    :cond_2
    iput v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return-void
.end method

.method public showBokehPanel()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl2()Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    move-result-object v0

    const-string v1, "FragmentFNumberAdjust"

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "beauty panel shown. do not show the slide view."

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBokehPanel mSupportShowType is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const v1, 0x7f12020f

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initSlideFNumberView()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSlidingAdapter:Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;

    invoke-virtual {v0, v4}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;->setEnable(Z)V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    .line 9
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->updateImageBokehIndicatorUiMargin(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v6

    iget v7, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 11
    :cond_1
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 12
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {v5}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 13
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 14
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v5, 0x12c

    .line 16
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 17
    new-instance v5, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v5}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 18
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    if-eqz v0, :cond_2

    .line 19
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v5

    invoke-interface {v0, v4, v1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZI)V

    .line 20
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->showOrHideBottomMenu(ZZ)V

    .line 21
    iput v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_5

    .line 22
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v2

    iget v5, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBottomTextViewHeight:I

    sub-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/android/camera/Util;->alignPopupBottom(Landroid/view/View;I)V

    .line 24
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 28
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 29
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 30
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    .line 31
    :cond_4
    iput v4, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    :cond_5
    :goto_0
    return-void
.end method

.method public toHideBeautyLensPanel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "FragmentFNumberAdjust"

    const-string/jumbo v1, "toHideBeautyLensPanel"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/ModeSelector;->impl2()Lcom/android/camera/protocol/protocols/ModeSelector;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/protocols/ModeSelector;->switchModeOrExternalTipLayout(Z)V

    :cond_1
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    return v1
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    .line 2
    const-class v0, Lcom/android/camera/protocol/protocols/FNumberController;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeCoordinator;Lcom/android/camera/protocol/protocols/HandleBackTrace;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSeekBarDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public visibleHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mCurrentShowState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mSupportShowType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mFnumberSlideView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_1
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBeautyLensListContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    .line 5
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, p0

    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust;->mBokehSeekBar:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_3
    return v1
.end method
