.class public Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AutoSelectHorizontalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;
    }
.end annotation


# instance fields
.field public isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isFling:Z

.field public isInit:Z

.field public isInitScroll:Z

.field public isMoveFinished:Z

.field public itemFirstLengthInvalid:I

.field public itemWidthMargin:I

.field public mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

.field public mDeltaX:I

.field public mLastMoveX:I

.field public mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field public mScroller:Landroid/widget/Scroller;

.field public mSelectPosition:I

.field public mTempSelectPosition:I

.field public mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 4
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInitScroll:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInit:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isFling:Z

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    .line 13
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 14
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    .line 15
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 17
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInitScroll:Z

    .line 18
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInit:Z

    .line 19
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isFling:Z

    .line 20
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    .line 23
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 24
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    .line 25
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 27
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInitScroll:Z

    .line 28
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInit:Z

    .line 29
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isFling:Z

    .line 30
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInit:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInit:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInitScroll:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->onDataChanged()V

    return-void
.end method

.method private calculateSelectedPos()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->getRealPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->getRealPosition()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 5
    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v3

    iget v5, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    cmpl-float v1, v2, v3

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 8
    :goto_0
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 10
    :cond_2
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    :cond_3
    return-void
.end method

.method private getRealPosition()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v1

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    if-gez v0, :cond_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$1;-><init>(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private onDataChanged()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    sub-int/2addr v0, v2

    add-int/2addr v2, v0

    .line 4
    iput v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isFling:Z

    .line 8
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    if-eqz v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    .line 10
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 12
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fling(II)Z
    .locals 0

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isFling:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->smoothMoveToPosition(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public getItemWidthMargin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    return p0
.end method

.method public moveMiddlePositionChanged(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onMoveMiddlePoisionChanged(IZ)V

    :cond_0
    return-void
.end method

.method public moveToPosition(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    .line 2
    :cond_1
    iget v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-gez v1, :cond_2

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt p1, v1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v2

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 9
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-eq p1, v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 12
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v2

    iget v3, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr p1, v3

    int-to-float p1, p1

    add-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result p1

    iget v3, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iget v4, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr p1, v3

    sub-float/2addr v2, p1

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr v2, p1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    float-to-int p1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-int p1, p1

    :cond_4
    move v3, p1

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0xfa

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 6
    :goto_0
    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    if-eqz v0, :cond_2

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;->access$702(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;Landroid/content/Context;)Landroid/content/Context;

    .line 9
    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int v4, v0

    .line 7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 8
    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->selectedPositionChanged(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isFling:Z

    if-nez p1, :cond_4

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 2
    iget p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    iput p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    .line 3
    iget p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isClickMove:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mTempSelectPosition:I

    iget p2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->moveMiddlePositionChanged(IZ)V

    :cond_0
    return-void
.end method

.method public selectedPositionChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->onSelectedPositionChanged(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-nez v0, :cond_0

    .line 2
    const-class p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mAutoSelectAdapter must extends AutoSelectAdapter<T extends SelectItemBean> "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;-><init>(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 6
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$2;-><init>(Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07040b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    .line 12
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "autoselect"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInit:Z

    return-void
.end method

.method public setInitScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isInitScroll:Z

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    if-nez v0, :cond_0

    const-string p0, "View"

    const-string p1, "The LayoutManager here must be LinearLayoutManager!"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLinearLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    return-void
.end method

.method public smoothMoveToPosition(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mWrapAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView$WrapperAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->isMoveFinished:Z

    .line 3
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mLastMoveX:I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->calculateSelectedPos()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v1

    .line 6
    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mSelectPosition:I

    div-int/lit16 p1, p1, 0x3e8

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    mul-int/2addr p1, v5

    add-int/2addr v2, p1

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mAutoSelectAdapter:Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v2

    iget v5, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemWidthMargin:I

    mul-int/2addr v5, v0

    int-to-float v0, v5

    add-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->itemFirstLengthInvalid:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    int-to-float p1, v3

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mDeltaX:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int v6, v2

    .line 11
    iget-object v3, p0, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/AutoSelectHorizontalView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_5
    :goto_3
    return-void
.end method
