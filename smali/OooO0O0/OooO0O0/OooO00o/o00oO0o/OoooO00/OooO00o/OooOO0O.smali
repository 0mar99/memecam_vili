.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field private final synthetic OooO0O0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0O;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0O;->OooO0O0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0O;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0O;->OooO0O0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->OooO00o(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
