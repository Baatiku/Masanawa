.class final Lcashier/view/MarqueeView$createTextView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MarqueeView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/view/MarqueeView;->i(Ljava/lang/Object;)Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $textView:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/appcompat/widget/AppCompatTextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcashier/view/MarqueeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcashier/view/MarqueeView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcashier/view/MarqueeView;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/view/MarqueeView<",
            "TT;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/appcompat/widget/AppCompatTextView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/view/MarqueeView$createTextView$1;->this$0:Lcashier/view/MarqueeView;

    .line 2
    .line 3
    iput-object p2, p0, Lcashier/view/MarqueeView$createTextView$1;->$textView:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcashier/view/MarqueeView$createTextView$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcashier/view/MarqueeView$createTextView$1;->this$0:Lcashier/view/MarqueeView;

    invoke-static {v0}, Lcashier/view/MarqueeView;->d(Lcashier/view/MarqueeView;)Lcashier/view/MarqueeView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcashier/view/MarqueeView$createTextView$1;->this$0:Lcashier/view/MarqueeView;

    invoke-virtual {v1}, Lcashier/view/MarqueeView;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcashier/view/MarqueeView$createTextView$1;->$textView:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Lcashier/view/MarqueeView$a;->a(ILandroid/widget/TextView;)V

    :cond_0
    return-void
.end method
