.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOO0O;->OooO00o:Lcom/android/camera/Camera;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooOO0O;->OooO0O0:Z

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OooOO0O;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOO0O;->OooO00o:Lcom/android/camera/Camera;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OooOO0O;->OooO0O0:Z

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OooOO0O;->OooO0OO:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/Camera;->OooO00o(ZZ)V

    return-void
.end method
