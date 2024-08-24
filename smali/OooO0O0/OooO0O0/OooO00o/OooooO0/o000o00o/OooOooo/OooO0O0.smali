.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/image/hdr/HDRManager;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:Lcom/android/camera/MutexModeManager;

.field private final synthetic OooO0Oo:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/image/hdr/HDRManager;ZLcom/android/camera/MutexModeManager;Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO00o:Lcom/android/camera/module/image/hdr/HDRManager;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO0O0:Z

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO0OO:Lcom/android/camera/MutexModeManager;

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO0Oo:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO00o:Lcom/android/camera/module/image/hdr/HDRManager;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO0O0:Z

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO0OO:Lcom/android/camera/MutexModeManager;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooo/OooO0O0;->OooO0Oo:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/module/image/hdr/HDRManager;->OooO00o(ZLcom/android/camera/MutexModeManager;Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method
