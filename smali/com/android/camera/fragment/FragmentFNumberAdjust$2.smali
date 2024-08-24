.class public Lcom/android/camera/fragment/FragmentFNumberAdjust$2;
.super Ljava/lang/Object;
.source "FragmentFNumberAdjust.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$2;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$2;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->access$002(Lcom/android/camera/fragment/FragmentFNumberAdjust;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    return-void
.end method
