.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0oO;->OooO00o:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O0oO;->OooO00o:Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/camera/module/VideoSkyModule;->OooO00o(Landroid/net/Uri;)V

    return-void
.end method
