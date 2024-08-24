.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOoo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/RenderEngineAdapter;

.field private final synthetic OooO0O0:Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOoo0;->OooO00o:Lcom/android/camera/ui/RenderEngineAdapter;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOoo0;->OooO0O0:Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOoo0;->OooO00o:Lcom/android/camera/ui/RenderEngineAdapter;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OooOoo0;->OooO0O0:Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RenderEngineAdapter;->OooO00o(Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V

    return-void
.end method
