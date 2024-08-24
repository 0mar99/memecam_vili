.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/CameraRenderEngine;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/CameraRenderEngine;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;->OooO00o:Lcom/android/camera/ui/CameraRenderEngine;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;->OooO00o:Lcom/android/camera/ui/CameraRenderEngine;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;->OooO0O0:I

    iget p0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooO0OO;->OooO0OO:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/CameraRenderEngine;->OooO00o(II)V

    return-void
.end method
