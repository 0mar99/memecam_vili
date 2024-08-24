.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/animation/AnimationComposite;

.field private final synthetic OooO0O0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/animation/AnimationComposite;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/OooO00o;->OooO00o:Lcom/android/camera/animation/AnimationComposite;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/OooO00o;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/OooO00o;->OooO00o:Lcom/android/camera/animation/AnimationComposite;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/OooO00o;->OooO0O0:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/animation/AnimationComposite;->OooO00o(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    return-void
.end method
