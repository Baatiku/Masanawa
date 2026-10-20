.class public final Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;
.super Lteam/opay/pay/payment/record/ToPupViewHolder;
.source "TopUpRecordAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/payment/record/TopUpRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SingleViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;",
        "Lteam/opay/pay/payment/record/ToPupViewHolder;",
        "Lroe;",
        "binding",
        "<init>",
        "(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lroe;)V",
        "Lteam/opay/pay/payment/record/TopUpRecord;",
        "item",
        "",
        "position",
        "",
        "a",
        "(Lteam/opay/pay/payment/record/TopUpRecord;I)V",
        "Lroe;",
        "getBinding",
        "()Lroe;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lroe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/pay/payment/record/TopUpRecordAdapter;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lroe;)V
    .locals 1
    .param p1    # Lteam/opay/pay/payment/record/TopUpRecordAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lroe;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->b:Lteam/opay/pay/payment/record/TopUpRecordAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Lroe;->a()Landroid/widget/LinearLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "getRoot(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lteam/opay/pay/payment/record/ToPupViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->a:Lroe;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->e(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->d(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->m(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final e(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/record/TopUpRecordAdapter;->n(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(Lteam/opay/pay/payment/record/TopUpRecord;I)V
    .locals 3
    .param p1    # Lteam/opay/pay/payment/record/TopUpRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->a:Lroe;

    .line 7
    .line 8
    invoke-virtual {v0}, Lroe;->a()Landroid/widget/LinearLayout;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->b:Lteam/opay/pay/payment/record/TopUpRecordAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->a:Lroe;

    .line 14
    .line 15
    iget-object v1, v1, Lroe;->e:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/payment/record/TopUpRecord;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->a:Lroe;

    .line 25
    .line 26
    iget-object v1, v1, Lroe;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    .line 28
    const-string v2, "content"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Leoe;

    .line 34
    .line 35
    invoke-direct {v2, v0, p1, p2}, Leoe;-><init>(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lteam/opay/pay/payment/record/TopUpRecordAdapter$SingleViewHolder;->a:Lroe;

    .line 42
    .line 43
    iget-object p2, p2, Lroe;->c:Landroid/widget/TextView;

    .line 44
    .line 45
    const-string v1, "delete"

    .line 46
    .line 47
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lfoe;

    .line 51
    .line 52
    invoke-direct {v1, v0, p1}, Lfoe;-><init>(Lteam/opay/pay/payment/record/TopUpRecordAdapter;Lteam/opay/pay/payment/record/TopUpRecord;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
