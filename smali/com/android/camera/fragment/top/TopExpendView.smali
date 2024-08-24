.class public Lcom/android/camera/fragment/top/TopExpendView;
.super Landroid/widget/LinearLayout;
.source "TopExpendView.java"


# instance fields
.field public expendAnimator:Landroid/animation/ObjectAnimator;

.field public mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

.field public mAnimEnable:Z

.field public mDegree:I

.field public mEndViewRight:I

.field public mIsAnimRuning:Z

.field public mStartViewLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/TopExpendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAnimEnable:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/top/TopExpendView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->updateUI()V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/top/TopExpendView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mIsAnimRuning:Z

    return p1
.end method

.method private addItemInAnimator(Landroid/view/View;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getDuration()J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:J

    mul-long v6, v0, v2

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getAnchorViewX()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x0

    const/4 v5, 0x1

    aput v2, v3, v5

    const-string/jumbo v2, "translationX"

    .line 6
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 7
    move-object v3, p1

    check-cast v3, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/LabelItemView;->isShowText()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    .line 8
    invoke-virtual {v8}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDefaultSelectPosition()I

    move-result v8

    if-ne p2, v8, :cond_1

    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v4

    goto :goto_1

    :cond_1
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v0, v4

    aput-object v2, v0, v5

    .line 9
    :goto_1
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->expendAnimator:Landroid/animation/ObjectAnimator;

    .line 10
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->expendAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->expendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/camera/fragment/top/TopExpendView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/top/TopExpendView$2;-><init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigColor()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDefaultSelectPosition()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->isSelectOnColorItem()Z

    move-result p2

    if-nez p2, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0603a1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 17
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopTintColor()I

    move-result v9

    .line 18
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v4

    move-object v5, p1

    invoke-interface/range {v4 .. v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->setTopColorAnimator(Landroid/view/View;JII)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopTintColor()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    .line 20
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->expendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addItemOutAnimator(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getDuration()J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:J

    mul-long/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getAnchorViewX()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v2, v4, v5

    const-string/jumbo v2, "translationX"

    .line 5
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v0, Lcom/android/camera/fragment/top/TopExpendView$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/camera/fragment/top/TopExpendView$3;-><init>(Lcom/android/camera/fragment/top/TopExpendView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getAlphaDuaration()J

    move-result-wide v0

    sget-wide v7, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:J

    mul-long/2addr v0, v7

    .line 10
    move-object p3, p1

    check-cast p3, Lcom/android/camera/fragment/top/LabelItemView;

    iget-object v4, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v4

    if-ne p2, v4, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {p3, v6}, Lcom/android/camera/fragment/top/LabelItemView;->getAlphaOutView(Z)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    new-array v3, v3, [F

    .line 11
    fill-array-data v3, :array_0

    const-string v5, "alpha"

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 12
    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 13
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    const-wide/16 v0, 0x12c

    .line 15
    sget-wide v3, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->DEBUG_ANIMATION_TIME_MULTIPLE:J

    mul-long v7, v3, v0

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDefaultSelectPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 18
    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->isSelectOnColorItem()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopTintColor()I

    move-result v9

    .line 20
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigColor()I

    move-result v10

    .line 21
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v5

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->setTopColorAnimator(Landroid/view/View;JII)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result p1

    if-ne p2, p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->isSelectOnColorItem()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 23
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopTintColor()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    .line 24
    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3, p0, v1}, Lcom/android/camera/fragment/top/TopExpandAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v3

    .line 4
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    iget-object v5, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v5, v3, v2}, Lcom/android/camera/fragment/top/TopExpandAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    move-object v5, v4

    check-cast v5, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-virtual {v5, v3, v2, v0}, Lcom/android/camera/fragment/top/LabelItemView;->setNewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;II)V

    .line 8
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    .line 9
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/top/TopExpendView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/TopExpendView$1;-><init>(Lcom/android/camera/fragment/top/TopExpendView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isSelectOnColorItem()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectComponentDataItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    .line 4
    instance-of v1, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;

    const-string/jumbo v2, "normal"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string/jumbo v4, "on"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    .line 7
    :cond_1
    instance-of v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "2"

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "101"

    .line 10
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "5"

    .line 11
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string v4, "104"

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    .line 13
    :cond_3
    instance-of v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const-string/jumbo v4, "off"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 15
    :cond_4
    instance-of v0, v0, Lcom/android/camera/data/data/runing/ComponentRunningAiAudio;

    if-eqz v0, :cond_5

    .line 16
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v3

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private updateUI()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    iget v2, p0, Lcom/android/camera/fragment/top/TopExpendView;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAnimEnable:Z

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->addItemInAnimator(Landroid/view/View;I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mEndViewRight:I

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mStartViewLeft:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public endExpendAnim()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->expendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public getEndViewRight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mEndViewRight:I

    return p0
.end method

.method public getStartViewLeft()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mStartViewLeft:I

    return p0
.end method

.method public isAnimRuning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/top/TopExpendView;->mIsAnimRuning:Z

    return p0
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

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput p2, p0, Lcom/android/camera/fragment/top/TopExpendView;->mDegree:I

    return-void
.end method

.method public revertExpendView(ZLjava/lang/Runnable;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/LabelItemView;->isShowText()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 8
    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getSelectPosition()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 10
    invoke-direct {p0, v2, v1, p2}, Lcom/android/camera/fragment/top/TopExpendView;->addItemOutAnimator(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-direct {p0, v2, v1, v0}, Lcom/android/camera/fragment/top/TopExpendView;->addItemOutAnimator(Landroid/view/View;ILjava/lang/Runnable;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public setAdapter(Lcom/android/camera/fragment/top/TopExpandAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/TopExpendView;->initView()V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAnimEnable:Z

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/TopExpendView;->mDegree:I

    return-void
.end method

.method public updateTheme()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getTopConfigColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    .line 4
    iget-object v3, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    iget-object v4, p0, Lcom/android/camera/fragment/top/TopExpendView;->mAdapter:Lcom/android/camera/fragment/top/TopExpandAdapter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/TopExpandAdapter;->getComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v4

    const v5, 0x7f120344

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lcom/android/camera/fragment/top/LabelItemView;->initView(ZLcom/android/camera/data/data/ComponentDataItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
