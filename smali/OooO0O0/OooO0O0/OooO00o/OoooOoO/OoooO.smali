.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;->OooO0O0:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OoooO;->OooO0OO:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(IILandroid/animation/ValueAnimator;)V

    return-void
.end method
