.class public Lcom/android/camera/ui/TopAlertSlideSwitchButton;
.super Landroid/widget/LinearLayout;
.source "TopAlertSlideSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;,
        Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;
    }
.end annotation


# static fields
.field public static final DISABLE_COLOR:I = 0x4dffffff

.field public static final NONE:I = -0x1


# instance fields
.field public NORMAL_COLOR:I

.field public SELECT_COLOR:I

.field public final TEXT_SHADOW_RADIUS:I

.field public mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public mBackgroundColor:I

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mChildMargin:F

.field public mIndicatorColor:I

.field public mIndicatorPaint:Landroid/graphics/Paint;

.field public mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

.field public mIsTextView:Z

.field public mItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field public mItemHeight:F

.field public mItemWidth:F

.field public mMaxHeight:I

.field public mMaxTextWidth:I

.field public mMaxWidth:I

.field public mSelectChildWidth:F

.field public mSelectIndex:I

.field public mSelectMarginLeft:F

.field public mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

.field public mTextBold:Z

.field public mTextSize:F

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x33000000

    .line 4
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundColor:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->TEXT_SHADOW_RADIUS:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 8
    iput v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 9
    iput v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/android/camera/R$styleable;->SlideSwitchButton:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mChildMargin:F

    .line 12
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    const/4 p2, 0x5

    const/high16 p3, -0x1000000

    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    .line 14
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxWidth:I

    const/4 p2, 0x3

    const/16 p3, 0xa0

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxHeight:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07077a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 p3, 0x7

    .line 17
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxTextWidth:I

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    const/16 p2, 0x8

    const/16 p3, 0x30

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextSize:F

    const/4 p2, 0x6

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextBold:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 24
    iget p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 27
    iget p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(I)V

    return-void
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/TopAlertSlideSwitchButton;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    return-void
.end method

.method private addImageChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ColorImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$600(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 3
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 6
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 7
    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-direct {p0, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v1

    iget v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    if-eq v1, v4, :cond_0

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v1

    iget v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-interface {v1, v0, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-interface {v1, v0, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v1

    const v3, 0x4dffffff    # 5.3687088E8f

    invoke-interface {v1, v0, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-interface {v1, v0, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V

    .line 19
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 20
    :goto_1
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p3, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070778

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f070777

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 26
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object p3

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mChildMargin:F

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p3, p1, v1, p0, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setChildMargin(Landroid/widget/LinearLayout$LayoutParams;III)V

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTextChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera/ui/AdaptiveTextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/AdaptiveTextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mMaxTextWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 4
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 11
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextSize:F

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 13
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mTextBold:Z

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07077b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 17
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTextShadow(Landroid/widget/TextView;I)V

    .line 19
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iput p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x4dffffff    # 5.3687088E8f

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v0, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTextShadow(Landroid/widget/TextView;I)V

    .line 26
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    :goto_0
    invoke-static {p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p3, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V

    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->getTextChildWidth(Landroid/content/Context;)I

    move-result p3

    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object p3

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mChildMargin:F

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p3, p1, v1, p0, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setChildMargin(Landroid/widget/LinearLayout$LayoutParams;III)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;)I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-static {v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$700(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private getSelectColor(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-static {p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$300(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    return p0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isDataEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private mapItemData(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-direct {v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIconRes(I)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIconShadowRes(I)V

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setDisplayNameRes(I)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setContentDescriptionRes(I)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIsDisabled(Z)V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIsShowText:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setIsShowText(Z)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mSelectColor:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setOriginalSelectColor(I)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->setValue(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private setAccessible(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V

    :cond_0
    return-void
.end method

.method private setAccessible(Landroid/view/View;Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;Z)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I

    move-result p2

    .line 8
    :goto_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p2, ", "

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1200af

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setChildColor(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/ColorImageView;

    invoke-interface {v0, p0, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setChildShadow(II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-interface {v0, p0, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTextShadow(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private setIndex(I)V
    .locals 4

    .line 18
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildShadow(II)V

    .line 20
    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 21
    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    .line 22
    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildShadow(II)V

    .line 23
    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 26
    iget-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v2, 0x1

    .line 28
    invoke-direct {p0, p1, v2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    int-to-float p1, v0

    .line 29
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    int-to-float p1, v1

    .line 30
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private setIndex(IZ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-eq v0, p1, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 7
    iget v5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 8
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->getAnimatorDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->getTopAlertInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/Oooo0OO;

    move-object v1, v0

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v1 .. v7}, LOooO0O0/OooO0O0/OooO00o/o00oO0o/Oooo0OO;-><init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;FIFII)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$1;-><init>(Lcom/android/camera/ui/TopAlertSlideSwitchButton;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(I)V

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;->toSlideSwitch(ILjava/lang/String;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setItemColor(Landroid/view/View;I)V
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/camera/ui/ColorImageView;

    if-eqz p0, :cond_1

    .line 2
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ColorImageView;->getColor()I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setColorAndRefresh(Lcom/android/camera/ui/ColorImageView;I)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    if-ne p0, p2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewsStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    invoke-static {v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$800(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x4dffffff    # 5.3687088E8f

    .line 5
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    goto :goto_1

    .line 6
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 v4, 0x1

    if-ne v3, v1, :cond_1

    .line 7
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    .line 11
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    if-eq v3, v4, :cond_2

    .line 12
    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(FIFIILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    int-to-float p2, p2

    sub-float/2addr p2, p1

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    .line 2
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    int-to-float p1, p4

    sub-float/2addr p1, p3

    mul-float/2addr p1, p6

    add-float/2addr p3, p1

    .line 3
    iput p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    .line 5
    invoke-direct {p0, p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p5}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getSelectColor(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 6
    invoke-virtual {p2, p6, p3, p4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 9
    invoke-virtual {p1, p6, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p5, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->isSetShadowNeedDelay()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    float-to-double p3, p6

    const-wide v0, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, p3, v0

    if-lez p1, :cond_1

    .line 11
    invoke-direct {p0, p5, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildShadow(II)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p5, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildShadow(II)V

    .line 13
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->isSetShadowNeedDelay()Z

    move-result p1

    const/4 p3, 0x2

    if-eqz p1, :cond_2

    float-to-double p4, p6

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, p4, v0

    if-lez p1, :cond_3

    .line 15
    iget p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildShadow(II)V

    goto :goto_1

    .line 16
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildShadow(II)V

    .line 17
    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    iget-object p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget p4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    .line 18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget p5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 19
    invoke-virtual {p3, p6, p4, p5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setChildColor(II)V

    .line 20
    iget p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setAccessible(IZ)V

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getIndicatorCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mType:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;->enableSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-ne v1, v2, :cond_5

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x8000

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 8
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-interface/range {v1 .. v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->drawMainRoundRect(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7
    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-ne v0, v1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    iget v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    add-float v6, v1, v3

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v7, v1

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v8, v1

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 13
    invoke-interface/range {v2 .. v10}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->drawChildRoundRect(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V
    .locals 8

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 2
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectChildWidth:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mapItemData(Ljava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-direct {p0, v3, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->isDataEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    if-ne p1, p3, :cond_4

    .line 6
    invoke-direct {p0, v1, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->getIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    .line 7
    iget-object v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    :cond_0
    iget v4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectIndex:I

    if-eq p1, v4, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndex(I)V

    goto :goto_2

    :cond_1
    move v4, v2

    .line 10
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 11
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-ne v4, p1, :cond_2

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v6

    invoke-interface {v6, v5, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTextShadow(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v5, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopAlertInterface;->setTextShadow(Landroid/widget/TextView;I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_3
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->updateViewsStatus(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v3, v1

    .line 15
    :catch_1
    :cond_4
    iput-object v3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    .line 16
    iput-boolean p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 19
    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSelectMarginLeft:F

    .line 20
    :goto_3
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    .line 22
    iget-boolean p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIsTextView:Z

    if-eqz p2, :cond_5

    .line 23
    invoke-direct {p0, v1, v2, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->addTextChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V

    goto :goto_4

    .line 24
    :cond_5
    invoke-static {p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->access$900(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 25
    invoke-direct {p0, v1, v2, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->addTextChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V

    goto :goto_4

    .line 26
    :cond_6
    invoke-direct {p0, v1, v2, p1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->addImageChild(Ljava/lang/String;ILcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->NORMAL_COLOR:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->SELECT_COLOR:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setSlideSwitchListener(Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->mType:I

    return-void
.end method
