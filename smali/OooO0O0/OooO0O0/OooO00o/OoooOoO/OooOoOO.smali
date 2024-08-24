.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentBottomIntentDone;

.field private final synthetic OooO0O0:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentBottomIntentDone;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;->OooO00o:Lcom/android/camera/fragment/FragmentBottomIntentDone;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;->OooO0O0:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;->OooO00o:Lcom/android/camera/fragment/FragmentBottomIntentDone;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/OooOoOO;->OooO0O0:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;->OooO00o(Landroid/graphics/Bitmap;)V

    return-void
.end method
