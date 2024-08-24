.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o0ooOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field private final synthetic OooO0O0:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0ooOoO;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0ooOoO;->OooO0O0:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0ooOoO;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0ooOoO;->OooO0O0:Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/DollyZoomModule;->OooO00o(Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;)V

    return-void
.end method
