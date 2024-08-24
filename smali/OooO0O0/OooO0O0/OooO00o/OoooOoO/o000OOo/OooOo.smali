.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field private final synthetic OooO0O0:Landroid/widget/ImageView;

.field private final synthetic OooO0OO:Lcom/android/camera/data/data/config/ComponentConfigFlash;

.field private final synthetic OooO0Oo:Lcom/android/camera/data/data/config/ComponentConfigHdr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO0O0:Landroid/widget/ImageView;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO0OO:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO0Oo:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO0O0:Landroid/widget/ImageView;

    iget-object v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO0OO:Lcom/android/camera/data/data/config/ComponentConfigFlash;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo;->OooO0Oo:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooO00o(Landroid/widget/ImageView;Lcom/android/camera/data/data/config/ComponentConfigFlash;Lcom/android/camera/data/data/config/ComponentConfigHdr;)V

    return-void
.end method
