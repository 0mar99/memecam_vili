.class public Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;
.super Ljava/lang/Object;
.source "TemplateMakeupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    iget-object v1, v0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->onItemSelected(IZ)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->getShineType()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;

    iget-object p2, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    iget p0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/TypeItem;

    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
