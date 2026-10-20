.class final Lcashier/view/PinInputField$blink$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PinInputField.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/view/PinInputField;->k(Ljr2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ln33;
    c = "cashier.view.PinInputField"
    f = "PinInputField.kt"
    l = {
        0x162,
        0x163
    }
    m = "blink"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcashier/view/PinInputField;


# direct methods
.method public constructor <init>(Lcashier/view/PinInputField;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/view/PinInputField;",
            "Ljr2<",
            "-",
            "Lcashier/view/PinInputField$blink$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/view/PinInputField$blink$1;->this$0:Lcashier/view/PinInputField;

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
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/view/PinInputField$blink$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcashier/view/PinInputField$blink$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcashier/view/PinInputField$blink$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcashier/view/PinInputField$blink$1;->this$0:Lcashier/view/PinInputField;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcashier/view/PinInputField;->g(Lcashier/view/PinInputField;Ljr2;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
