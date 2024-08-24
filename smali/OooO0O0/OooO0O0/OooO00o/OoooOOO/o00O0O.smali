.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00O0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00O0O;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o00O0O;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
