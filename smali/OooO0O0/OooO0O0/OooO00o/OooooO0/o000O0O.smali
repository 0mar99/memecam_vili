.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;

.field private final synthetic OooO0O0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0O;->OooO00o:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0O;->OooO0O0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0O;->OooO00o:Lcom/android/camera/module/VideoModule;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0O;->OooO0O0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Landroid/graphics/Rect;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
