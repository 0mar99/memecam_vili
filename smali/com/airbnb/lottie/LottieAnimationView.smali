.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$OooO0o;
    }
.end annotation


# static fields
.field public static final DEFAULT_FAILURE_LISTENER:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public animationName:Ljava/lang/String;

.field public animationResId:I

.field public autoPlay:Z

.field public buildDrawingCacheDepth:I

.field public cacheComposition:Z

.field public composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

.field public compositionTask:LOooO0O0/OooO00o/OooO00o/OooOOOO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public failureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public fallbackResource:I

.field public isInitialized:Z

.field public final loadedListener:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public final lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LOooO0O0/OooO00o/OooO00o/OooOO0o;",
            ">;"
        }
    .end annotation
.end field

.field public renderMode:LOooO0O0/OooO00o/OooO00o/OooOOo;

.field public wasAnimatingWhenDetached:Z

.field public wasAnimatingWhenNotShown:Z

.field public final wrappedFailureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$OooO00o;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$OooO00o;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    .line 3
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 5
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    .line 6
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 7
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 8
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 10
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:LOooO0O0/OooO00o/OooO00o/OooOOo;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 12
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    .line 16
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 18
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    .line 19
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 20
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 21
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 23
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:LOooO0O0/OooO00o/OooO00o/OooOOo;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 25
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 26
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0O0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    .line 29
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0OO;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 31
    new-instance p3, LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-direct {p3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    .line 32
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 33
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 34
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p3, 0x1

    .line 35
    iput-boolean p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 36
    sget-object p3, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:LOooO0O0/OooO00o/OooO00o/OooOOo;

    .line 37
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 38
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 39
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return p0
.end method

.method public static synthetic access$100(Lcom/airbnb/lottie/LottieAnimationView;)LOooO0O0/OooO00o/OooO00o/OooOO0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-object p0
.end method

.method public static synthetic access$200()LOooO0O0/OooO00o/OooO00o/OooOO0;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0Oo(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-virtual {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0OO(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0()V

    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$OooO0o0;->OooO00o:[I

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o;->OooOO0O()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    .line 5
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 3
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 4
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 5
    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    .line 6
    sget v4, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 10
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 14
    :cond_4
    :goto_1
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 15
    :cond_5
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 17
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 18
    :cond_6
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    .line 20
    :cond_7
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 22
    :cond_8
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 24
    :cond_9
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 25
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 26
    :cond_a
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 27
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 28
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 29
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOOoo;

    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    .line 31
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v0, v5}, LOooO0O0/OooO00o/OooO00o/OooOOoo;-><init>(I)V

    .line 32
    new-instance v5, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;-><init>([Ljava/lang/String;)V

    .line 33
    new-instance v6, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;

    invoke-direct {v6, v0}, LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;-><init>(Ljava/lang/Object;)V

    .line 34
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOO0;->OooOoo:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v5, v0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    .line 35
    :cond_b
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    .line 37
    :cond_c
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    sget v0, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    sget-object v3, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 39
    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOOo;->values()[LOooO0O0/OooO00o/OooO00o/OooOOo;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_d

    .line 40
    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 41
    :cond_d
    invoke-static {}, LOooO0O0/OooO00o/OooO00o/OooOOo;->values()[LOooO0O0/OooO00o/OooO00o/OooOOo;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(LOooO0O0/OooO00o/OooO00o/OooOOo;)V

    .line 42
    :cond_e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 43
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {v0, v3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0oo;->OooO00o(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/Boolean;)V

    .line 46
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 47
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->isInitialized:Z

    return-void
.end method

.method private setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 2
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    .line 4
    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO0O0(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    .line 5
    invoke-virtual {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOO0;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:LOooO0O0/OooO00o/OooO00o/OooOOOO;

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addLottieOnCompositionLoadedListener(LOooO0O0/OooO00o/OooO00o/OooOO0o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, LOooO0O0/OooO00o/OooO00o/OooOO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addValueCallback(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "TT;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    return-void
.end method

.method public addValueCallback(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            "TT;",
            "LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0Oo;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$OooO0Oo;-><init>(Lcom/airbnb/lottie/LottieAnimationView;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0o;)V

    invoke-virtual {v0, p1, p2, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;Ljava/lang/Object;LOooO0O0/OooO00o/OooO00o/OooOoOO/OooOO0;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 3

    const-string v0, "buildDrawingCache"

    .line 1
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    .line 4
    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, LOooO0O0/OooO00o/OooO00o/OooOOo;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(LOooO0O0/OooO00o/OooO00o/OooOOo;)V

    .line 7
    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 8
    invoke-static {v0}, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO0O0(Ljava/lang/String;)F

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o()V

    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO()V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Z)V

    return-void
.end method

.method public getComposition()LOooO0O0/OooO00o/OooO00o/OooO0o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0o;->OooO0OO()F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0oO()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0oo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxFrame()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()LOooO0O0/OooO00o/OooO00o/OooOOo0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0O()LOooO0O0/OooO00o/OooO00o/OooOOo0;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0o()F

    move-result p0

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO0()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOOO()F

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOOo()F

    move-result p0

    return p0
.end method

.method public hasMasks()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOo()Z

    move-result p0

    return p0
.end method

.method public hasMatte()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOoo()Z

    move-result p0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result p0

    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo0o()Z

    move-result p0

    return p0
.end method

.method public loop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO00o:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0O0:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 10
    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0OO:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 11
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0Oo:Z

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Ljava/lang/String;)V

    .line 14
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 15
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0oO:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO00o:Ljava/lang/String;

    .line 4
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0O0:I

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOO0o()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0OO:F

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0Oo:Z

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o0:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0o:I

    .line 9
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOOO0()I

    move-result p0

    iput p0, v1, Lcom/airbnb/lottie/LottieAnimationView$OooO0o;->OooO0oO:I

    return-object v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->isInitialized:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOo()V

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoO0()V

    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    :goto_0
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoO()V

    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoOO()V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(LOooO0O0/OooO00o/OooO00o/OooOO0o;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ")",
            "Ljava/util/List<",
            "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo0o/OooO0o0;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public resumeAnimation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoo0()V

    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    :goto_0
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooOoo()V

    return-void
.end method

.method public setAnimation(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 3
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;I)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;ILjava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Ljava/io/InputStream;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 2

    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 8
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    .line 10
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;

    move-result-object p1

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(LOooO0O0/OooO00o/OooO00o/OooOOOO;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    return-void
.end method

.method public setComposition(LOooO0O0/OooO00o/OooO00o/OooO0o;)V
    .locals 3

    .line 1
    sget-boolean v0, LOooO0O0/OooO00o/OooO00o/OooO0o0;->OooO00o:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:LOooO0O0/OooO00o/OooO00o/OooO0o;

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)Z

    move-result v0

    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 12
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO0O0/OooO00o/OooO00o/OooOO0o;

    .line 13
    invoke-interface {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooOO0o;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0o;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFailureListener(LOooO0O0/OooO00o/OooO00o/OooOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0O0/OooO00o/OooO00o/OooOO0<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:LOooO0O0/OooO00o/OooO00o/OooOO0;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return-void
.end method

.method public setFontAssetDelegate(LOooO0O0/OooO00o/OooO00o/OooO0OO;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0OO;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(I)V

    return-void
.end method

.method public setImageAssetDelegate(LOooO0O0/OooO00o/OooO00o/OooO0Oo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooO0Oo;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1, p2, p3}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0O0(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0OO(F)V

    return-void
.end method

.method public setRenderMode(LOooO0O0/OooO00o/OooO00o/OooOOo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->renderMode:LOooO0O0/OooO00o/OooO00o/OooOOo;

    .line 2
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(Z)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {v0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0Oo(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO0o0(F)V

    return-void
.end method

.method public setTextDelegate(LOooO0O0/OooO00o/OooO00o/OooOo00;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(LOooO0O0/OooO00o/OooO00o/OooOo00;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    invoke-virtual {p0, p1, p2}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->OooO00o(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
