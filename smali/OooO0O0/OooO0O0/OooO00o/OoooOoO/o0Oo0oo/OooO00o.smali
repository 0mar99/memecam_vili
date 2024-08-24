.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/modeui/BaseModeUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/modeui/BaseModeUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO00o;->OooO00o:Lcom/android/camera/fragment/modeui/BaseModeUI;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0Oo0oo/OooO00o;->OooO00o:Lcom/android/camera/fragment/modeui/BaseModeUI;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;->switchCamera(Landroid/view/View;)V

    return-void
.end method
