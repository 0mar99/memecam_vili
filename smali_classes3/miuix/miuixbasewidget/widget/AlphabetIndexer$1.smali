.class public Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;
.super Ljava/lang/Object;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->initItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 3
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 5
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v4}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    move-result-object v4

    iget-object v4, v4, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v4, v4

    iget-object v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v5}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v5

    iget-object v6, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v6}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$200(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget-object v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v4, v0, :cond_2

    .line 6
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v4}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    move-result-object v4

    iget-object v4, v4, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v4, v4

    div-int/2addr v0, v4

    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v4}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 7
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    iget-object v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v5}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;

    move-result-object v5

    iget-object v5, v5, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$TextHighlighter;->mIndexes:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 8
    iget-object v4, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v4}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v5}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$400(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 9
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$500(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    goto/16 :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v0

    if-eq v3, v0, :cond_4

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 13
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 14
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 17
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$300(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 19
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 20
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$702(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)I

    .line 21
    :cond_3
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v1, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$800(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    .line 22
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$900(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$900(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$Adapter;->getFirstVisibleItemPosition()I

    move-result v0

    .line 24
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$1000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Landroid/widget/SectionIndexer;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 25
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$700(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 26
    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {v1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$700(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)I

    move-result v3

    invoke-static {v1, v3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$1100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    .line 27
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p0, v0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$1200(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    :cond_4
    :goto_0
    return v2
.end method
