.class public final synthetic LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0Oo;->OooO00o:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0o/OooO00o/OooO0oO/OooO0Oo;->OooO00o:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/xiaomi/camera/rx/CameraSchedulers;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method
