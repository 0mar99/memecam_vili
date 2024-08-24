.class public final synthetic LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/tts/TTSHelper$Listener;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/tts/TTSHelper$Listener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0oO;->OooO00o:Lcom/android/camera/tts/TTSHelper$Listener;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0oO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0oO;->OooO00o:Lcom/android/camera/tts/TTSHelper$Listener;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/oo000o/OooO0oO;->OooO0O0:Z

    invoke-static {v0, p0}, Lcom/android/camera/tts/TTSHelper;->OooO00o(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    return-void
.end method
