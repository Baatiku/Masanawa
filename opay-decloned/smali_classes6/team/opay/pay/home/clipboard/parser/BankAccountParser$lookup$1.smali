.class final Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "BankAccountParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/clipboard/parser/BankAccountParser;->k(Lteam/opay/pay/home/clipboard/ClipboardIntent$BankAccount;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.home.clipboard.parser.BankAccountParser"
    f = "BankAccountParser.kt"
    l = {
        0x2b,
        0x2e
    }
    m = "lookup"
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lteam/opay/pay/home/clipboard/parser/BankAccountParser;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/clipboard/parser/BankAccountParser;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/clipboard/parser/BankAccountParser;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;->this$0:Lteam/opay/pay/home/clipboard/parser/BankAccountParser;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Ljr2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;->label:I

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/parser/BankAccountParser$lookup$1;->this$0:Lteam/opay/pay/home/clipboard/parser/BankAccountParser;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/home/clipboard/parser/BankAccountParser;->f(Lteam/opay/pay/home/clipboard/parser/BankAccountParser;Lteam/opay/pay/home/clipboard/ClipboardIntent$BankAccount;Landroidx/fragment/app/Fragment;JLjr2;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
