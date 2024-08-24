.class public Lcom/android/camera/timerburst/TimerBurstSeekBar;
.super Landroid/view/View;
.source "TimerBurstSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;,
        Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;
    }
.end annotation


# static fields
.field public static CIRICLE_RADIUS_MAX:F = 0.0f

.field public static CIRICLE_RADIUS_MIN:F = 0.0f

.field public static HIDE_MAX:I = 0x2

.field public static HIDE_MIN:I = 0x1

.field public static HIDE_NONE:I = 0x0

.field public static INNER_RADIUS_MAX:F = 0.0f

.field public static INNER_RADIUS_MIN:F = 0.0f

.field public static final MAX_SCALE_RATE:F = 100.0f

.field public static final NUM_RATE:F = 0.03f

.field public static OUT_RADIUS:F = 0.0f

.field public static final POSITION_X_RATE:F = 0.1f

.field public static final TEXT_MARGINTOP:I = 0xa

.field public static final TEXT_MARGINTOP_MAX:I


# instance fields
.field public isScaledUp:Z

.field public mBackgroundRectPaint:Landroid/graphics/Paint;

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCircleXProperty:Lmiuix/animation/property/ViewProperty;

.field public mContext:Landroid/content/Context;

.field public mCurrentCircleX:F

.field public mCurrentNum:I

.field public mCurrentScaleRate:F

.field public mCurrentTextPaint:Landroid/graphics/Paint;

.field public mHideType:I

.field public mInnerPaint:Landroid/graphics/Paint;

.field public mMax:I

.field public mMin:I

.field public mNeedRefrensh:Z

.field public mNormalTextPaint:Landroid/text/TextPaint;

.field public mRTL:Z

.field public mScaleObject:Ljava/lang/Object;

.field public mScaleProperty:Lmiuix/animation/property/ViewProperty;

.field public mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

.field public mStep:I

.field public mStyle:Lmiuix/animation/IStateStyle;

.field public mUnit:Ljava/lang/String;

.field public mViewHeight:I

.field public mViewWidth:I

.field public mXObject:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleObject:Ljava/lang/Object;

    .line 6
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mXObject:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    .line 8
    iput-boolean p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    .line 9
    new-instance p2, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;

    const-string p3, "CircleX"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCircleXProperty:Lmiuix/animation/property/ViewProperty;

    .line 10
    new-instance p2, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;

    const-string/jumbo p3, "scale"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleProperty:Lmiuix/animation/property/ViewProperty;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initPaint(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/timerburst/TimerBurstSeekBar;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/timerburst/TimerBurstSeekBar;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    return p1
.end method

.method private numToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startAnimator(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleProperty:Lmiuix/animation/property/ViewProperty;

    aput-object p0, v4, v2

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v4, v0

    new-instance p0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p1, -0x2

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v3

    .line 4
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public initPaint(Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07076f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07076d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070767

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MIN:F

    .line 8
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07076b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MAX:F

    .line 9
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MIN:F

    .line 10
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070769

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MAX:F

    .line 11
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    .line 12
    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    .line 13
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    .line 23
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f060375

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 27
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-static {p1, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 29
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 34
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    iget-object p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {p0, v2}, LOooO0O0/OooO0O0/OooO0OO/OooO0o0;->OooO00o(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public initSeekBarConfig([IIFILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    .line 4
    iput p3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    const/4 p3, 0x0

    .line 5
    aget p3, p1, p3

    iput p3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    .line 6
    array-length p3, p1

    sub-int/2addr p3, v0

    aget p1, p1, p3

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    .line 7
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstCurrentTextColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnIndicatorColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    .line 10
    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    .line 11
    iput p4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    if-nez p5, :cond_0

    const-string p5, ""

    .line 12
    :cond_0
    iput-object p5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mUnit:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

    return-void
.end method

.method public mapNumToPosition(ILcom/android/camera/timerburst/TimerBurstSeekBar$Result;)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    .line 3
    :cond_0
    sget p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    return p0

    .line 4
    :cond_1
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 5
    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    .line 6
    :cond_2
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float p0, p0

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr p0, p1

    return p0

    :cond_3
    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    const v0, 0x3cf5c28f    # 0.03f

    cmpg-float v1, p1, v0

    const v2, 0x3dcccccd    # 0.1f

    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    .line 7
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_4
    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_5
    const v1, 0x3f7851ec    # 0.97f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    .line 8
    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_6
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    const p2, 0x3f666666    # 0.9f

    add-float/2addr p1, p2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 9
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_8
    sub-float/2addr p1, v0

    const p2, 0x3f70a3d7    # 0.94f

    div-float/2addr p1, p2

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    .line 10
    :goto_0
    sget p2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p2, v0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    sub-float/2addr p0, v0

    invoke-static {p1, v1, p0}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method public mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I
    .locals 4

    .line 1
    sget v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    return p0

    .line 4
    :cond_1
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    .line 5
    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    .line 6
    :cond_2
    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    return p0

    :cond_3
    sub-float/2addr p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v1, p1, v0

    const v2, 0x3cf5c28f    # 0.03f

    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    .line 7
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_4
    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_5
    const v1, 0x3f666666    # 0.9f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    .line 8
    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_6
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    const p2, 0x3f7851ec    # 0.97f

    add-float/2addr p1, p2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 9
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_8
    sub-float/2addr p1, v0

    const p2, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, p2

    const p2, 0x3f70a3d7    # 0.94f

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    .line 10
    :goto_0
    iget p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    add-int/lit8 p1, p1, 0x1

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p2, p1, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    .line 3
    new-instance v1, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;

    invoke-direct {v1, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    .line 4
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 5
    :cond_0
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapNumToPosition(ILcom/android/camera/timerburst/TimerBurstSeekBar$Result;)F

    move-result v2

    iput v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v2, :cond_2

    .line 7
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v1

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    .line 9
    iput-boolean v9, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    sget v2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstBackgroundCircleRadius(F)F

    move-result v7

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getRectHeight()I

    move-result v1

    int-to-float v2, v1

    .line 13
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v3, v1

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    int-to-float v1, v1

    sub-float v5, v1, v2

    iget-object v8, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 15
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MIN:F

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MAX:F

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v2, v11

    add-float/2addr v1, v2

    .line 16
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstCircleRadius(F)F

    move-result v7

    .line 17
    iget-boolean v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v4, v3

    sget v5, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    add-float/2addr v6, v1

    int-to-float v3, v3

    sub-float/2addr v3, v5

    add-float v5, v3, v1

    iget-object v8, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v6

    move v6, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    sget v2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float v3, v2, v1

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    add-float/2addr v6, v1

    int-to-float v4, v4

    sub-float/2addr v4, v2

    add-float v8, v4, v1

    iget-object v12, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v8

    move v6, v7

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 24
    :goto_0
    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MIN:F

    sget v2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MAX:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v11

    add-float v6, v1, v2

    .line 25
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v4, v2

    sget v5, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->drawCircle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, -0x3ee00000    # -10.0f

    .line 29
    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    mul-float/2addr v5, v4

    div-float/2addr v5, v11

    add-float/2addr v5, v3

    .line 30
    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    if-eq v3, v4, :cond_6

    .line 31
    iget-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v3, :cond_5

    .line 32
    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 33
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v4, v6

    div-float/2addr v6, v10

    add-float/2addr v3, v6

    sub-float/2addr v3, v4

    .line 34
    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v6, v6

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v6, v7

    add-float/2addr v3, v5

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 35
    :cond_5
    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 36
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v4, v6

    div-float/2addr v6, v10

    add-float/2addr v3, v6

    sub-float/2addr v3, v4

    .line 37
    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    add-float/2addr v3, v5

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 38
    :cond_6
    :goto_1
    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    if-eq v3, v4, :cond_8

    .line 39
    iget-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v3, :cond_7

    .line 40
    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v2

    div-float/2addr v2, v10

    add-float/2addr v3, v2

    sub-float/2addr v3, v4

    .line 42
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    add-float/2addr v3, v5

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 43
    :cond_7
    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v9, v6, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v2

    div-float/2addr v2, v10

    add-float/2addr v3, v2

    sub-float/2addr v3, v4

    .line 45
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v4, v4

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v4, v6

    add-float/2addr v3, v5

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 46
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v9, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 49
    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v3, v2

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    .line 51
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getTimerBurstSeekBarAnimator()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V

    .line 4
    iput-boolean v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V

    .line 6
    iput-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    goto :goto_0

    :cond_2
    new-array v0, v4, [Landroid/view/View;

    aput-object p0, v0, v3

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCircleXProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v5, v3

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v0, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStyle:Lmiuix/animation/IStateStyle;

    .line 8
    :cond_3
    :goto_0
    new-instance v0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;

    invoke-direct {v0, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget v5, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {p1, v5, v6}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I

    move-result v5

    .line 11
    iget-boolean v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v6, :cond_5

    .line 12
    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    iget v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    add-int/2addr v6, v7

    sub-int v5, v6, v5

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v6

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    if-ne v6, v7, :cond_4

    .line 14
    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {v0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v6

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    if-ne v6, v7, :cond_5

    .line 16
    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {v0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    .line 17
    :cond_5
    :goto_1
    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    if-eq v5, v6, :cond_6

    .line 18
    iput v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    .line 19
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    if-nez v0, :cond_7

    .line 20
    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    if-eq v0, v6, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_8

    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCircleXProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, -0x2

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    .line 22
    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v2

    .line 23
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 24
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

    invoke-interface {v0, p0, p1, v5}, Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;->currentSeekBarValue(Landroid/view/View;FI)V

    :cond_8
    return v4

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method
