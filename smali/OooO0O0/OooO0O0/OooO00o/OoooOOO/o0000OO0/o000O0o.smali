.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItemInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O0o;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOOO/o0000OO0/o000O0o;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-interface {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemInterface;->enterOrExit(Lio/reactivex/SingleEmitter;)V

    return-void
.end method
