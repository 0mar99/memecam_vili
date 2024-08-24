.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/Ooooo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentWideSelfie;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Ooooo0o;->OooO00o:Lcom/android/camera/fragment/FragmentWideSelfie;

    return-void
.end method


# virtual methods
.method public final getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/Ooooo0o;->OooO00o:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentWideSelfie;->OooO00o()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method
