.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/magicvideosky/MediaEffectCamera;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/magicvideosky/MediaEffectCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O;->OooO00o:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000O;->OooO00o:Lcom/xiaomi/magicvideosky/MediaEffectCamera;

    invoke-static {p0}, Lcom/android/camera/module/VideoSkyModule;->OooO00o(Lcom/xiaomi/magicvideosky/MediaEffectCamera;)V

    return-void
.end method
