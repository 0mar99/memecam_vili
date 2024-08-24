.class public Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;,
        Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;
    }
.end annotation


# static fields
.field public static final DAMPING:F = 0.85f

.field public static final DISMISS_DURATION:I = 0xc8

.field public static final DURATION:I = 0x12c

.field public static final MARGIN:I = 0xf

.field public static final RESPONSE:F = 0.66f

.field public static final TAG:Ljava/lang/String; = "PhoneDialogAnim"

.field public static final TAG_HIDE:Ljava/lang/String; = "hide"

.field public static final TAG_SHOW:Ljava/lang/String; = "show"

.field public static sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->relayoutView(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$100(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->executeAnim(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V

    return-void
.end method

.method public static synthetic access$300()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static synthetic access$302(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    sput-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static changeHeight(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x50

    .line 3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object p0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 2
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v2, v0, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v0, v4

    aput-object v1, v0, v5

    .line 3
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xc8

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static executeAnim(Landroid/view/View;IIZLmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-nez p3, :cond_0

    .line 2
    invoke-static {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->getHolderAnimView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    const/16 p3, 0xf

    invoke-static {p0, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->changeHeight(Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x2

    new-array p3, p0, [I

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 3
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p0, p0, [F

    .line 5
    fill-array-data p0, :array_0

    invoke-static {v0, p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    return-void

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f28f5c3    # 0.66f
    .end array-data
.end method

.method public static getHolderAnimView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$id;->dialog_anim_holder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static relayoutView(Landroid/view/View;I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 0

    .line 1
    sget-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;

    invoke-direct {v0, p0, p1, p3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->dismissPanel(Landroid/view/View;Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;)V

    .line 3
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;

    invoke-direct {v0, p0, p3, p1, p4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLandroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p0, 0x4

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;

    invoke-direct {v0, p0, p3, p4, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$2;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 9
    :goto_0
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/DimAnimator;->show(Landroid/view/View;)V

    return-void
.end method
