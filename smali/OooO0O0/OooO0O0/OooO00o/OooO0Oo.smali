.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooO0Oo;->OooO00o:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooO0Oo;->OooO00o:Lcom/android/camera/Camera;

    check-cast p1, Lcom/android/camera/module/loader/WeakNullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->OooO00o(Lcom/android/camera/module/loader/WeakNullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
