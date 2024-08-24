.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;->OooO00o:Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;->OooO00o:Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooOOO0;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->OooO0O0(ZLcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
