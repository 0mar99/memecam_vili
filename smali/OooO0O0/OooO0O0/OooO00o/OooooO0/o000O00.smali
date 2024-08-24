.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O00;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O00;->OooO00o:Ljava/lang/String;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Ljava/lang/String;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
