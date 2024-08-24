.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field private final synthetic OooO0O0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;->OooO0O0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;->OooO00o:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o000OOo/OooOo0O;->OooO0O0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooO0oO(Landroid/widget/ImageView;)V

    return-void
.end method
