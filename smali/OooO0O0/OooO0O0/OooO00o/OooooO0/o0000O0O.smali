.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/MiLiveModule;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/MiLiveModule;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;->OooO00o:Lcom/android/camera/module/MiLiveModule;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;->OooO0OO:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;->OooO00o:Lcom/android/camera/module/MiLiveModule;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;->OooO0O0:Ljava/lang/String;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OooooO0/o0000O0O;->OooO0OO:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/module/MiLiveModule;->OooO00o(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
