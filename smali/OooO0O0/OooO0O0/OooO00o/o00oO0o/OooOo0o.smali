.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:Lcom/android/camera/CameraScreenNail;

.field private final synthetic OooO0OO:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/android/camera/CameraScreenNail;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;->OooO00o:I

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;->OooO0O0:Lcom/android/camera/CameraScreenNail;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;->OooO0OO:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;->OooO00o:I

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;->OooO0O0:Lcom/android/camera/CameraScreenNail;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOo0o;->OooO0OO:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->OooO00o(ILcom/android/camera/CameraScreenNail;Ljava/lang/Object;)V

    return-void
.end method
